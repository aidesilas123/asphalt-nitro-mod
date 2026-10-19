package com.gameloft.GLSocialLib.GameAPI;

import android.accounts.AccountManager;
import android.app.Activity;
import android.net.http.AndroidHttpClient;
import com.gameloft.GLSocialLib.ConsoleAndroidGLSocialLib;
import com.gameloft.android.ANMP.GloftAGHM.R;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.json.o2;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpPost;

/* JADX INFO: loaded from: classes2.dex */
public class RestManager implements RestManagerListener {
    private static final String CLIENT_ID = GameAPIAndroidGLSocialLib.s_instance.getGameActivity().getString(R.string.game_api_app_id) + ".apps.googleusercontent.com";
    private static final int IO_BUFFER_SIZE = 4096;
    private static final int RETRY_COUNT = 10;
    public static final String SIMPLE_SCOPE = "https://www.googleapis.com/auth/games https://www.googleapis.com/auth/plus.login";
    private static final String TAG = "RestManager";
    private String authToken = null;
    private Activity mContext;
    private AccountManager mManager;

    class restWorker {
        private RestManagerListener mDelegate;

        public restWorker(RestManagerListener restManagerListener) {
            this.mDelegate = restManagerListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void RunQuery(String str) {
            int i = 10;
            while (RestManager.this.authToken == null && i > 0) {
                try {
                    ConsoleAndroidGLSocialLib.Log_Verbose("A valid OAuth token is required, waiting and retrying " + i + " more times...");
                    i--;
                    try {
                        Thread.sleep(200L);
                    } catch (InterruptedException e2) {
                        e2.printStackTrace();
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                    this.mDelegate.onRestError("Something went wrong");
                    return;
                }
            }
            if (RestManager.this.authToken == null) {
                this.mDelegate.onRestError("No auth token available");
                return;
            }
            ConsoleAndroidGLSocialLib.Log_Verbose("Access token: " + RestManager.this.authToken);
            AndroidHttpClient androidHttpClientNewInstance = AndroidHttpClient.newInstance(o2.f6459e);
            HttpPost httpPost = new HttpPost(str);
            httpPost.setHeader("Authorization", "OAuth " + RestManager.this.authToken);
            HttpResponse httpResponseExecute = androidHttpClientNewInstance.execute(httpPost);
            StatusLine statusLine = httpResponseExecute.getStatusLine();
            if (statusLine != null && statusLine.getStatusCode() != 200) {
                ConsoleAndroidGLSocialLib.Log_Minor_Error("Error " + statusLine + " when requesting person data from " + httpPost.getURI().toString());
                if (statusLine.getStatusCode() == 401) {
                    GoogleAuthUtil.invalidateToken(RestManager.this.mContext, RestManager.this.authToken);
                    this.mDelegate.onRestError("Error " + statusLine + " when requesting person data from " + httpPost.getURI().toString());
                }
            }
            InputStream content = httpResponseExecute.getEntity().getContent();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[4096];
            while (true) {
                int i2 = content.read(bArr);
                if (i2 == -1) {
                    androidHttpClientNewInstance.close();
                    String str2 = new String(byteArrayOutputStream.toByteArray(), C.UTF8_NAME);
                    ConsoleAndroidGLSocialLib.Log_Debug("Response: " + str2);
                    this.mDelegate.onRestResponse(str2);
                    return;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            }
        }
    }

    public RestManager(Activity activity) {
        this.mContext = activity;
    }

    public void getRest(String str, String str2) {
        this.authToken = str2;
        new restWorker(this).RunQuery(str);
    }

    @Override // com.gameloft.GLSocialLib.GameAPI.RestManagerListener
    public void onRestError(String str) {
        ConsoleAndroidGLSocialLib.Log_Major_Error("Rest Error:" + str);
        GameAPIAndroidGLSocialLib.nativeGameAPIDidNotComplete("Rest Error:" + str);
    }

    @Override // com.gameloft.GLSocialLib.GameAPI.RestManagerListener
    public void onRestResponse(String str) {
        GameAPIAndroidGLSocialLib.nativeGameAPICompleteWithData(str, false, null);
    }
}
