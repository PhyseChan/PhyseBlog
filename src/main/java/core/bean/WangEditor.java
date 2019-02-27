package core.bean;
import java.util.Arrays;

/**
 * 前端使用wangeditor作为富文本编辑器，由于富文本编辑器的要求返回[errno：data]形式的数据
 * 为了方便特地建一个wangeditor类。
 */
public class WangEditor {

    private Integer errno; //错误代码，0 表示没有错误。
    private String[] data; //已上传的图片路径

    public WangEditor() {
        super();
    }
    public WangEditor(String[] data) {
        super();
        this.errno = 0;
        this.data = data;
    }
    public Integer getErrno() {
        return errno;
    }
    public void setErrno(Integer errno) {
        this.errno = errno;
    }
    public String[] getData() {
        return data;
    }
    public void setData(String[] data) {
        this.data = data;
    }
    @Override
    public String toString() {
        return "WangEditor [errno=" + errno + ", data=" + Arrays.toString(data)
                + "]";
    }


}

