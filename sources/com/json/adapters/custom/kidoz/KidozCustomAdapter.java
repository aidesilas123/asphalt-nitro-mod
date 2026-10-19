package com.json.adapters.custom.kidoz;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.json.mediationsdk.adunit.adapter.BaseAdapter;
import com.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.kidoz.sdk.api.KidozSDK;
import com.kidoz.sdk.api.interfaces.SDKEventListener;

/* JADX INFO: loaded from: classes3.dex */
public class KidozCustomAdapter extends BaseAdapter {
    public static final String PUBLISHER_ID_KEY = "publisherId";
    public static final String TAG = "KidozCustomAdapter";
    public static final String TOKEN_KEY = "token";

    @Override // com.json.mediationsdk.adunit.adapter.BaseAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "1.2.0";
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return KidozSDKInfo.SDK_VERSION_NAME;
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, Context context, final NetworkInitializationListener networkInitializationListener) {
        String str = TAG;
        Log.d(str, "KidozCustomAdapter init called");
        if (KidozSDK.isInitialised()) {
            Log.d(str, "KidozCustomAdapter Already initialized");
            if (networkInitializationListener != null) {
                networkInitializationListener.onInitSuccess();
                return;
            }
            return;
        }
        String string = adData.getString(PUBLISHER_ID_KEY);
        String string2 = adData.getString("token");
        Log.d(str, "KidozCustomAdapter publisherId::" + string + " token::" + string2);
        if (TextUtils.isEmpty(string) || TextUtils.isEmpty(string2)) {
            networkInitializationListener.onInitFailed(1002, "Missing Publisher Id or Token");
            return;
        }
        KidozSDK.setExtension("ironsource", "1.2.0");
        KidozSDK.setSDKListener(new SDKEventListener() { // from class: com.ironsource.adapters.custom.kidoz.KidozCustomAdapter.1
            @Override // com.kidoz.sdk.api.interfaces.SDKEventListener
            public void onInitError(String str2) {
                Log.d(KidozCustomAdapter.TAG, "KidozCustomAdapter onInitError " + str2);
                NetworkInitializationListener networkInitializationListener2 = networkInitializationListener;
                if (networkInitializationListener2 != null) {
                    networkInitializationListener2.onInitFailed(1000, str2);
                }
            }

            @Override // com.kidoz.sdk.api.interfaces.SDKEventListener
            public void onInitSuccess() {
                Log.d(KidozCustomAdapter.TAG, "KidozCustomAdapter onInitSuccess");
                NetworkInitializationListener networkInitializationListener2 = networkInitializationListener;
                if (networkInitializationListener2 != null) {
                    networkInitializationListener2.onInitSuccess();
                }
            }
        });
        KidozSDK.initialize(context, string, string2);
    }
}
