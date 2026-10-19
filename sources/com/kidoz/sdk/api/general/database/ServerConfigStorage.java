package com.kidoz.sdk.api.general.database;

import com.kidoz.sdk.api.general.utils.PropertiesObj;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class ServerConfigStorage {
    private static final ServerConfigStorage INSTANCE = new ServerConfigStorage();
    private PropertiesObj serverConfig;

    private ServerConfigStorage() {
    }

    public static ServerConfigStorage getInstance() {
        return INSTANCE;
    }

    public synchronized void insertAppProperties(PropertiesObj propertiesObj) {
        this.serverConfig = propertiesObj;
    }

    public synchronized void insertProperties(String str, JSONObject jSONObject) {
        try {
            this.serverConfig.getData().put(str, jSONObject);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    public synchronized PropertiesObj loadAppProperties() {
        return this.serverConfig;
    }

    public synchronized JSONObject loadProperties(String str) {
        try {
            if (!this.serverConfig.getData().has(str)) {
                return null;
            }
            return (JSONObject) this.serverConfig.getData().get(str);
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
