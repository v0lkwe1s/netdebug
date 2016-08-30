package masterjava.model;

import java.sql.Timestamp;
import org.json.JSONArray;

public class _class {
    private Integer id;
    private String host;
    private Integer hostId;
    private Timestamp date;
    private JSONArray json;

    public _class() {
    }

    public _class(Integer id, String host, Integer hostId, Timestamp date, JSONArray json) {
        this.id = id;
        this.host = host;
        this.hostId = hostId;
        this.date = date;
        this.json = json;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getHost() {
        return host;
    }

    public void setHost(String host) {
        this.host = host;
    }

    public Integer getHostId() {
        return hostId;
    }

    public void setHostId(Integer hostId) {
        this.hostId = hostId;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public JSONArray getJson() {
        return json;
    }

    public void setJson(JSONArray json) {
        this.json = json;
    }
}