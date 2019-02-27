package core.fileupload;

import com.google.gson.Gson;
import com.qiniu.common.QiniuException;
import com.qiniu.common.Zone;
import com.qiniu.http.Response;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.storage.model.DefaultPutRet;
import com.qiniu.util.Auth;

import java.io.IOException;
import java.util.Properties;

public class qiniuUtil {
    private String accessKey;
    private String secretKey;
    private String bucket;

    /**
     * 加载properties配置
     */
    public qiniuUtil(){
        Properties properties=new Properties();
        try {
            properties.load(qiniuUtil.class.getResourceAsStream("qiniuConfig.properties"));
            accessKey=properties.getProperty("accessKey");
            secretKey=properties.getProperty("secretKey");
            bucket=properties.getProperty("bucket");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /**
     * 七牛云官方上传文件代码
     * 此方法为服务器端上传到七牛云
     * @param localFilePath
     * @return
     */
    public String upload(String localFilePath){
        //构造一个带指定Zone对象的配置类
        Configuration cfg = new Configuration(Zone.zone2());
        //...其他参数参考类注释
        UploadManager uploadManager = new UploadManager(cfg);
        String key = null;
        Auth auth = Auth.create(accessKey, secretKey);
        String upToken = auth.uploadToken(bucket);
        try {
            Response response = uploadManager.put(localFilePath, key, upToken);
            //解析上传成功的结果
            DefaultPutRet putRet = new Gson().fromJson(response.bodyString(), DefaultPutRet.class);
            return putRet.key;
        } catch (QiniuException ex) {
            Response r = ex.response;
            System.err.println(r.toString());
            try {
                System.err.println(r.bodyString());
            } catch (QiniuException ex2) {
                //ignore
            }
        }
        return null;
    }
}
