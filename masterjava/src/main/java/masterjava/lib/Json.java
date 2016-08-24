/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package masterjava.lib;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import masterjava.model._class;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/**
 *
 * @author williamvolkweis
 */
public class Json {
    public ArrayList<_class> getObjFromJson(String jsonString){
        
        ArrayList<_class> obj = new ArrayList<_class>();
        try {
        String json[] = jsonString.split(";");
        for (int i = 0; i < json.length; i++) {
            JSONObject _classObject = new JSONObject(json[i]);
            JSONArray host = _classObject.getJSONArray("host");
            for (int x = 0; x < host.length(); x++) {
                _class _obj = new _class();
                JSONObject jsObj = host.getJSONObject(x);
                _obj.setDate(Timestamp.valueOf(jsObj.getString("date")));
                _obj.setHost(jsObj.getString("hostname"));
                _obj.setHostId(jsObj.getInt("id"));
                _obj.setJson(_classObject.getJSONArray("disk"));
                obj.add(_obj);
            }
            
        }
    } catch (JSONException e) {
        e.printStackTrace();
    }
    return obj;
    }
}
