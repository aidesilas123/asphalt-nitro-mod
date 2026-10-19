package com.mbridge.msdk.foundation.download;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.same.net.g.b;
import com.mbridge.msdk.foundation.tools.aa;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class DownloadMessage<T> {
    private static final String TAG = "DownloadMessage";
    private T campaign;
    private int downloadRate;
    private DownloadResourceType downloadResourceType;
    private String downloadUrl;
    private Map<String, Object> extraData;
    private String host;
    private String resourceUrl;
    private String saveFileName;
    private String saveFilePath;
    private String md5 = "";
    private boolean checkMD5 = false;
    private boolean isUseCronet = false;

    public DownloadMessage(T t, String str, String str2, int i, DownloadResourceType downloadResourceType) {
        this.downloadRate = 100;
        this.campaign = t;
        this.downloadUrl = str;
        this.saveFileName = str2;
        this.downloadRate = i;
        this.downloadResourceType = downloadResourceType;
        try {
            URL url = new URL(str);
            StringBuilder sb = new StringBuilder();
            this.host = url.getHost();
            sb.append(url.getProtocol());
            sb.append("://");
            sb.append(url.getHost());
            sb.append(url.getPath());
            this.resourceUrl = sb.toString();
        } catch (MalformedURLException unused) {
            this.resourceUrl = "";
        }
    }

    public void addExtra(String str, Object obj) {
        if (this.extraData == null) {
            this.extraData = new HashMap(4);
        }
        this.extraData.put(str, obj);
    }

    public boolean canUseCronet() {
        return this.isUseCronet;
    }

    public T getCampaign() {
        return this.campaign;
    }

    public int getDownloadRate() {
        return this.downloadRate;
    }

    public DownloadResourceType getDownloadResourceType() {
        return this.downloadResourceType;
    }

    public String getDownloadUrl() {
        return this.downloadUrl;
    }

    public Object getExtra(String str) {
        Map<String, Object> map = this.extraData;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.extraData.get(str);
    }

    public String getMd5() {
        return this.md5;
    }

    public String getResourceUrl() {
        return this.resourceUrl;
    }

    public String getSaveFileName() {
        return this.saveFileName;
    }

    public String getSaveFilePath() {
        return this.saveFilePath;
    }

    public boolean isCheckMD5() {
        return this.checkMD5;
    }

    public void setCheckMD5(boolean z) {
        this.checkMD5 = z;
    }

    public void setDownloadRate(int i) {
        this.downloadRate = i;
    }

    public void setMd5(String str) {
        this.md5 = str;
    }

    public void setSaveFilePath(String str) {
        this.saveFilePath = str;
    }

    public void setUseCronetDownload(int i) {
        try {
            if (TextUtils.isEmpty(this.downloadUrl)) {
                return;
            }
            if (TextUtils.isEmpty(this.host)) {
                this.host = new URL(this.downloadUrl).getHost();
            }
            boolean z = true;
            if (i != 1 && i != 2) {
                z = false;
            }
            this.isUseCronet = z;
            if (z) {
                b.a(this.host);
            }
        } catch (Throwable th) {
            aa.d(TAG, th.getMessage());
        }
    }
}
