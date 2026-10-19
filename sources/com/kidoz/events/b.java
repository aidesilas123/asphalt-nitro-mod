package com.kidoz.events;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.server_connect.SdkAPIManager;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: EventSyncAsyncTask.java */
/* JADX INFO: loaded from: classes4.dex */
public class b extends AsyncTask<EventBulk, Void, Void> {
    WeakReference<Context> a;

    public b(Context context) {
        this.a = null;
        this.a = new WeakReference<>(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Void doInBackground(EventBulk... eventBulkArr) {
        Context context;
        try {
            SDKLogger.printWarningLog(" ----------------------  ********************* ----------------------");
            SDKLogger.printWarningLog(" -----------------    START EVENTS SYNCING THREAD ---------------------");
            SDKLogger.printWarningLog(" ----------------------  ******************** ----------------------");
            WeakReference<Context> weakReference = this.a;
            if (weakReference != null && (context = weakReference.get()) != null && eventBulkArr != null && eventBulkArr.length > 0) {
                if ((context instanceof Activity) && ((Build.VERSION.SDK_INT >= 17 && ((Activity) context).isDestroyed()) || ((Activity) context).isFinishing())) {
                    return null;
                }
                EventBulk eventBulk = eventBulkArr[0];
                if (eventBulk != null) {
                    String string = eventBulk.toString();
                    SDKLogger.printWarningLog("Log Events Sync info : bulk value:" + string);
                    if (string != null) {
                        SdkAPIManager.getSdkApiInstance(context).sendKidozEventsToServerNotAsync(string);
                    }
                }
            }
        } catch (Exception unused) {
        }
        WeakReference<Context> weakReference2 = this.a;
        if (weakReference2 != null) {
            weakReference2.clear();
        }
        return null;
    }
}
