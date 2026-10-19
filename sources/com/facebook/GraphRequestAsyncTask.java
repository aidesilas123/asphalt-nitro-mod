package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: compiled from: GraphRequestAsyncTask.kt */
/* JADX INFO: loaded from: classes2.dex */
public class GraphRequestAsyncTask extends AsyncTask<Void, Void, List<? extends GraphResponse>> {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = GraphRequestAsyncTask.class.getCanonicalName();
    private final HttpURLConnection connection;
    private Exception exception;
    private final GraphRequestBatch requests;

    /* JADX INFO: compiled from: GraphRequestAsyncTask.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.n nVar) {
            this();
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GraphRequestAsyncTask(GraphRequestBatch requests) {
        this((HttpURLConnection) null, requests);
        Intrinsics.checkNotNullParameter(requests, "requests");
    }

    public GraphRequestAsyncTask(HttpURLConnection httpURLConnection, GraphRequestBatch requests) {
        Intrinsics.checkNotNullParameter(requests, "requests");
        this.connection = httpURLConnection;
        this.requests = requests;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GraphRequestAsyncTask(HttpURLConnection httpURLConnection, Collection<GraphRequest> requests) {
        this(httpURLConnection, new GraphRequestBatch(requests));
        Intrinsics.checkNotNullParameter(requests, "requests");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GraphRequestAsyncTask(HttpURLConnection httpURLConnection, GraphRequest... requests) {
        this(httpURLConnection, new GraphRequestBatch((GraphRequest[]) Arrays.copyOf(requests, requests.length)));
        Intrinsics.checkNotNullParameter(requests, "requests");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GraphRequestAsyncTask(Collection<GraphRequest> requests) {
        this((HttpURLConnection) null, new GraphRequestBatch(requests));
        Intrinsics.checkNotNullParameter(requests, "requests");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public GraphRequestAsyncTask(GraphRequest... requests) {
        this((HttpURLConnection) null, new GraphRequestBatch((GraphRequest[]) Arrays.copyOf(requests, requests.length)));
        Intrinsics.checkNotNullParameter(requests, "requests");
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ List<? extends GraphResponse> doInBackground(Void[] voidArr) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return null;
                }
                try {
                    return doInBackground2(voidArr);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                    return null;
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        } catch (Throwable th3) {
            CrashShieldHandler.handleThrowable(th3, this);
            return null;
        }
    }

    @VisibleForTesting(otherwise = 4)
    /* JADX INFO: renamed from: doInBackground, reason: avoid collision after fix types in other method */
    public List<GraphResponse> doInBackground2(Void... params) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return null;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return null;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return null;
                }
                try {
                    Intrinsics.checkNotNullParameter(params, "params");
                    try {
                        HttpURLConnection httpURLConnection = this.connection;
                        return httpURLConnection == null ? this.requests.executeAndWait() : GraphRequest.Companion.executeConnectionAndWait(httpURLConnection, this.requests);
                    } catch (Exception e2) {
                        this.exception = e2;
                        return null;
                    }
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                    return null;
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
                return null;
            }
        } catch (Throwable th3) {
            CrashShieldHandler.handleThrowable(th3, this);
            return null;
        }
    }

    protected final Exception getException() {
        return this.exception;
    }

    public final GraphRequestBatch getRequests() {
        return this.requests;
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onPostExecute(List<? extends GraphResponse> list) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            if (CrashShieldHandler.isObjectCrashing(this)) {
                return;
            }
            try {
                if (CrashShieldHandler.isObjectCrashing(this)) {
                    return;
                }
                try {
                    onPostExecute2((List<GraphResponse>) list);
                } catch (Throwable th) {
                    CrashShieldHandler.handleThrowable(th, this);
                }
            } catch (Throwable th2) {
                CrashShieldHandler.handleThrowable(th2, this);
            }
        } catch (Throwable th3) {
            CrashShieldHandler.handleThrowable(th3, this);
        }
    }

    /* JADX INFO: renamed from: onPostExecute, reason: avoid collision after fix types in other method */
    protected void onPostExecute2(List<GraphResponse> result) {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return;
        }
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            Intrinsics.checkNotNullParameter(result, "result");
            super.onPostExecute(result);
            Exception exc = this.exception;
            if (exc != null) {
                Utility utility = Utility.INSTANCE;
                String str = TAG;
                StringCompanionObject stringCompanionObject = StringCompanionObject.a;
                String str2 = String.format("onPostExecute: exception encountered during request: %s", Arrays.copyOf(new Object[]{exc.getMessage()}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "java.lang.String.format(format, *args)");
                Utility.logd(str, str2);
                return;
            }
            return;
        } catch (Throwable th3) {
            CrashShieldHandler.handleThrowable(th3, this);
            return;
        }
        CrashShieldHandler.handleThrowable(th2, this);
        return;
        CrashShieldHandler.handleThrowable(th, this);
    }

    @Override // android.os.AsyncTask
    @VisibleForTesting(otherwise = 4)
    public void onPreExecute() {
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
        } catch (Throwable th) {
            CrashShieldHandler.handleThrowable(th, this);
        }
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
        } catch (Throwable th2) {
            CrashShieldHandler.handleThrowable(th2, this);
            return;
        }
        if (CrashShieldHandler.isObjectCrashing(this)) {
            return;
        }
        try {
            super.onPreExecute();
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (FacebookSdk.isDebugEnabled()) {
                Utility utility = Utility.INSTANCE;
                String str = TAG;
                StringCompanionObject stringCompanionObject = StringCompanionObject.a;
                String str2 = String.format("execute async task: %s", Arrays.copyOf(new Object[]{this}, 1));
                Intrinsics.checkNotNullExpressionValue(str2, "java.lang.String.format(format, *args)");
                Utility.logd(str, str2);
            }
            if (this.requests.getCallbackHandler() == null) {
                this.requests.setCallbackHandler(Thread.currentThread() instanceof HandlerThread ? new Handler() : new Handler(Looper.getMainLooper()));
                return;
            }
            return;
        } catch (Throwable th3) {
            CrashShieldHandler.handleThrowable(th3, this);
            return;
        }
        CrashShieldHandler.handleThrowable(th2, this);
        return;
        CrashShieldHandler.handleThrowable(th, this);
    }

    public String toString() {
        String str = "{RequestAsyncTask:  connection: " + this.connection + ", requests: " + this.requests + "}";
        Intrinsics.checkNotNullExpressionValue(str, "StringBuilder()\n        .append(\"{RequestAsyncTask: \")\n        .append(\" connection: \")\n        .append(connection)\n        .append(\", requests: \")\n        .append(requests)\n        .append(\"}\")\n        .toString()");
        return str;
    }
}
