package com.kidoz.sdk.api.server_connect;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Build;
import com.gameloft.adsmanager.JavaUtils;
import com.kidoz.sdk.api.general.utils.PropertiesObj;
import com.kidoz.sdk.api.general.utils.SDKLogger;
import com.kidoz.sdk.api.general.utils.TestUtils;
import com.kidoz.sdk.api.server_connect.BaseConnectionClient;
import com.kidoz.sdk.api.structure.ContentData;
import java.util.HashMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
@SuppressLint({"NewApi"})
class BaseAPIManager extends BaseConnectionClient {
    private static final String TAG = "BaseAPIManager";
    private HashMap<SdkRequestType, RequestAsyncTask> runningTaskList = new HashMap<>();

    /* JADX INFO: renamed from: com.kidoz.sdk.api.server_connect.BaseAPIManager$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType;

        static {
            int[] iArr = new int[SdkRequestType.values().length];
            $SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType = iArr;
            try {
                iArr[SdkRequestType.GET_COUNTRY_CODE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType[SdkRequestType.LOAD_SDK_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType[SdkRequestType.LOAD_WATERFALL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType[SdkRequestType.VALIDATE_SDK.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class RequestAsyncTask extends AsyncTask<Void, Void, ResultData<?>> {
        private ContentValues mContentValues;
        private Context mContext;
        private boolean mDeveloperLogging;
        private ApiResultCallback<?> mResultCallback;
        private String mServerUrl;
        private int numOfReconnectionsOnFail;
        private BaseConnectionClient.CONNECTION_TYPE restRequestType;
        private SdkRequestType sdkRequestType;

        public RequestAsyncTask(Context context, String str, BaseConnectionClient.CONNECTION_TYPE connection_type, SdkRequestType sdkRequestType, ContentValues contentValues, int i, ApiResultCallback<?> apiResultCallback, boolean z) {
            this.restRequestType = BaseConnectionClient.CONNECTION_TYPE.POST;
            this.numOfReconnectionsOnFail = 0;
            this.mDeveloperLogging = false;
            this.mContext = context;
            this.restRequestType = connection_type;
            this.sdkRequestType = sdkRequestType;
            this.mContentValues = contentValues;
            this.mResultCallback = apiResultCallback;
            this.numOfReconnectionsOnFail = i;
            this.mDeveloperLogging = z;
            this.mServerUrl = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public ResultData<?> doInBackground(Void... voidArr) {
            String strMakeGetConnection;
            Context context;
            if (isCancelled()) {
                strMakeGetConnection = null;
            } else {
                int i = 0;
                strMakeGetConnection = null;
                while (i <= this.numOfReconnectionsOnFail) {
                    Context context2 = this.mContext;
                    if (context2 != null && (context2 instanceof Activity) && ((Build.VERSION.SDK_INT >= 17 && ((Activity) context2).isDestroyed()) || ((Activity) this.mContext).isFinishing())) {
                        return null;
                    }
                    i++;
                    if (isCancelled()) {
                        break;
                    }
                    try {
                        BaseConnectionClient.CONNECTION_TYPE connection_type = this.restRequestType;
                        if (connection_type == BaseConnectionClient.CONNECTION_TYPE.POST) {
                            strMakeGetConnection = BaseConnectionClient.makePostConnection(this.mServerUrl, this.mContentValues);
                        } else if (connection_type == BaseConnectionClient.CONNECTION_TYPE.GET) {
                            strMakeGetConnection = BaseConnectionClient.makeGetConnection(this.mServerUrl, this.mContentValues);
                        }
                    } catch (Exception e2) {
                        if (this.sdkRequestType != null) {
                            SDKLogger.printErrorLog(" \n IO Exception On [" + this.sdkRequestType.name() + "] request! \n" + e2.getMessage());
                        }
                    }
                    if (isCancelled() || strMakeGetConnection != null) {
                        break;
                    }
                    try {
                        if (isCancelled()) {
                            break;
                        }
                        Thread.sleep(i * JavaUtils.Constants.NATIVE_HEIGHT_DP_300 * 2);
                    } catch (Exception unused) {
                    }
                }
            }
            SdkRequestType sdkRequestType = this.sdkRequestType;
            if (sdkRequestType != null) {
                BaseConnectionClient.CONNECTION_TYPE connection_type2 = this.restRequestType;
                if (connection_type2 == BaseConnectionClient.CONNECTION_TYPE.POST) {
                    SDKLogger.printPostRequestDebugLog(this.mServerUrl, this.mContentValues, sdkRequestType.name());
                } else if (connection_type2 == BaseConnectionClient.CONNECTION_TYPE.GET) {
                    SDKLogger.printGetRequestDebugLog(this.mServerUrl, this.mContentValues, sdkRequestType.name());
                }
                SDKLogger.printResponse(strMakeGetConnection, this.restRequestType.name(), this.sdkRequestType.name());
            }
            if (isCancelled() || strMakeGetConnection == null || isCancelled() || (context = this.mContext) == null) {
                return null;
            }
            try {
                return BaseAPIManager.this.parseWebServiceResponse(context, this.sdkRequestType, strMakeGetConnection, this.mDeveloperLogging);
            } catch (Exception e3) {
                SDKLogger.printErrorLog(BaseAPIManager.TAG, "Error when trying to parse service response: " + e3.getMessage());
                return null;
            }
        }

        @Override // android.os.AsyncTask
        protected void onCancelled() {
            super.onCancelled();
            if (this.sdkRequestType == null || BaseAPIManager.this.runningTaskList == null) {
                return;
            }
            BaseAPIManager.this.runningTaskList.remove(this.sdkRequestType);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(ResultData<?> resultData) {
            Context context = this.mContext;
            if (context == null || !(context instanceof Activity) || ((Build.VERSION.SDK_INT < 17 || !((Activity) context).isDestroyed()) && !((Activity) this.mContext).isFinishing())) {
                if (!isCancelled()) {
                    if (resultData == null) {
                        ApiResultCallback<?> apiResultCallback = this.mResultCallback;
                        if (apiResultCallback != null) {
                            apiResultCallback.onFailed();
                        }
                    } else {
                        ApiResultCallback<?> apiResultCallback2 = this.mResultCallback;
                        if (apiResultCallback2 != null) {
                            apiResultCallback2.onServerResult(resultData);
                        }
                    }
                }
                BaseAPIManager.this.runningTaskList.remove(this.sdkRequestType);
            }
        }
    }

    BaseAPIManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ResultData<?> parseWebServiceResponse(Context context, SdkRequestType sdkRequestType, String str, boolean z) {
        if (sdkRequestType != null && context != null) {
            int i = AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$server_connect$SdkRequestType[sdkRequestType.ordinal()];
            if (i == 1) {
                try {
                    ResponseStatus responseStatus = new ResponseStatus(str);
                    ResultData<?> resultData = new ResultData<>();
                    resultData.setResponseStatus(responseStatus);
                    if (!responseStatus.getIsSuccessful()) {
                        return resultData;
                    }
                    resultData.setData(new JSONObject(str).optJSONObject("data").optString("country_code"));
                    return resultData;
                } catch (Exception e2) {
                    SDKLogger.printErrorLog(TAG, "Error when trying to parse GET_COUNTRY_CODE: " + e2.getMessage());
                }
            } else {
                if (i == 2 || i == 3) {
                    ContentData contentData = new ContentData();
                    contentData.decodeResponse(str);
                    ResultData<?> resultData2 = new ResultData<>();
                    resultData2.setData(contentData);
                    return resultData2;
                }
                if (i == 4) {
                    try {
                        ResponseStatus responseStatus2 = new ResponseStatus(str);
                        ResultData<?> resultData3 = new ResultData<>();
                        resultData3.setResponseStatus(responseStatus2);
                        if (!responseStatus2.getIsSuccessful()) {
                            return resultData3;
                        }
                        resultData3.setData(new PropertiesObj(new JSONObject(str).optJSONObject("data")));
                        return resultData3;
                    } catch (Exception e3) {
                        SDKLogger.printErrorLog(TAG, "Error when trying to parse validate SDK: " + e3.getMessage());
                    }
                }
            }
        }
        return null;
    }

    @TargetApi(11)
    protected void startServerConnection(Context context, String str, BaseConnectionClient.CONNECTION_TYPE connection_type, SdkRequestType sdkRequestType, ContentValues contentValues, int i, ApiResultCallback<?> apiResultCallback, boolean z, boolean z2) {
        if (!TestUtils.isMultiEnv() && str.startsWith("http://")) {
            return;
        }
        if (z2) {
            try {
                if (this.runningTaskList.containsKey(sdkRequestType) && this.runningTaskList.get(sdkRequestType) != null) {
                    RequestAsyncTask requestAsyncTask = this.runningTaskList.get(sdkRequestType);
                    if (requestAsyncTask.getStatus() != AsyncTask.Status.FINISHED) {
                        requestAsyncTask.cancel(true);
                    } else {
                        this.runningTaskList.remove(sdkRequestType);
                    }
                }
            } catch (Exception e2) {
                SDKLogger.printErrorLog(TAG, " \n Unable to finish Running Request asyncTask ! \n\n " + e2.getMessage());
            }
        }
        RequestAsyncTask requestAsyncTask2 = new RequestAsyncTask(context, str, connection_type, sdkRequestType, contentValues, i, apiResultCallback, z);
        this.runningTaskList.put(sdkRequestType, requestAsyncTask2);
        if (Build.VERSION.SDK_INT < 11) {
            requestAsyncTask2.execute(new Void[0]);
        } else {
            requestAsyncTask2.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }
}
