package com.mbridge.msdk.foundation.download.core;

import com.mbridge.msdk.foundation.download.DownloadMessage;
import com.mbridge.msdk.foundation.download.DownloadProgress;
import com.mbridge.msdk.foundation.download.DownloadStatus;
import com.mbridge.msdk.foundation.download.core.DownloaderReporter;
import com.mbridge.msdk.foundation.download.database.DownloadModel;
import com.mbridge.msdk.foundation.download.database.IDatabaseHelper;
import com.mbridge.msdk.foundation.download.utils.Utils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.aa;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public class DownloadTask implements IDownloadTask {
    private IDatabaseHelper _databaseHelper;
    private volatile DownloadMessage _downloadMessage;
    private DownloaderReporter.Builder _downloaderReporter;
    private volatile DownloadRequest _request;
    private volatile DownloadModel _downloadModel = null;
    private volatile boolean _needUpdateDownloadModel = true;
    private final Object _object = new Object();
    private String localRid = "";
    private String downType = "";
    private final String METRICS_D_LOAD_TYPE = "type";

    private DownloadTask(DownloadRequest downloadRequest, DownloadMessage downloadMessage, IDatabaseHelper iDatabaseHelper) {
        this._request = downloadRequest;
        this._downloadMessage = downloadMessage;
        this._databaseHelper = iDatabaseHelper;
    }

    static IDownloadTask create(DownloadRequest downloadRequest, DownloadMessage downloadMessage, IDatabaseHelper iDatabaseHelper) {
        return new DownloadTask(downloadRequest, downloadMessage, iDatabaseHelper);
    }

    private Map<String, String> createDownLoadMetricsParams() {
        HashMap map = new HashMap();
        try {
            this.localRid = this._request.get(CampaignEx.JSON_KEY_LOCAL_REQUEST_ID, "");
            String str = this._request.get("down_type", "");
            this.downType = str;
            map.put("type", str);
        } catch (Exception e2) {
            aa.d(IDownloadTask.TAG, e2.getMessage());
        }
        return map;
    }

    private void sendProgress(DownloadRequest downloadRequest, DownloadMessage downloadMessage) {
        if (downloadRequest.getStatus() != DownloadStatus.CANCELLED) {
            long downloadedBytes = this._request.getDownloadedBytes();
            long totalBytes = this._request.getTotalBytes();
            downloadRequest.handlerProcessEvent(downloadMessage, new DownloadProgress(downloadedBytes, totalBytes, Utils.getDownloadRate(totalBytes, downloadedBytes)));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00dd A[Catch: Exception -> 0x00f4, TryCatch #5 {Exception -> 0x00f4, blocks: (B:33:0x00cc, B:34:0x00d3, B:36:0x00dd, B:37:0x00e9), top: B:76:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e9 A[Catch: Exception -> 0x00f4, TRY_LEAVE, TryCatch #5 {Exception -> 0x00f4, blocks: (B:33:0x00cc, B:34:0x00d3, B:36:0x00dd, B:37:0x00e9), top: B:76:0x00cc }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0176 A[Catch: Exception -> 0x018e, TryCatch #0 {Exception -> 0x018e, blocks: (B:41:0x0165, B:42:0x016c, B:44:0x0176, B:45:0x0182), top: B:67:0x0165 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0182 A[Catch: Exception -> 0x018e, TRY_LEAVE, TryCatch #0 {Exception -> 0x018e, blocks: (B:41:0x0165, B:42:0x016c, B:44:0x0176, B:45:0x0182), top: B:67:0x0165 }] */
    @Override // com.mbridge.msdk.foundation.download.core.IDownloadTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.mbridge.msdk.foundation.download.DownloadResponse run() {
        /*
            Method dump skipped, instruction units count: 475
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.foundation.download.core.DownloadTask.run():com.mbridge.msdk.foundation.download.DownloadResponse");
    }
}
