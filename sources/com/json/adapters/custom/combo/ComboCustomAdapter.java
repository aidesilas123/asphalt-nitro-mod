package com.json.adapters.custom.combo;

import android.content.Context;
import com.json.mediationsdk.adunit.adapter.BaseAdapter;
import com.json.mediationsdk.adunit.adapter.listener.InterstitialAdListener;
import com.json.mediationsdk.adunit.adapter.listener.NetworkInitializationListener;
import com.json.mediationsdk.adunit.adapter.listener.RewardedVideoAdListener;
import com.json.mediationsdk.adunit.adapter.utility.AdData;
import com.json.mediationsdk.adunit.adapter.utility.AdapterErrorType;
import com.json.mediationsdk.logger.IronSourceError;
import java.util.Hashtable;

/* JADX INFO: loaded from: classes3.dex */
public class ComboCustomAdapter extends BaseAdapter {
    static Hashtable<String, InterstitialAdListener> interstitialAdListenerMap = new Hashtable<>();
    static Hashtable<String, RewardedVideoAdListener> rewardedVideoAdListenerMap = new Hashtable<>();

    public static void AdClicked(int i, String str) {
        try {
            if (i == 1) {
                interstitialAdListenerMap.get(str).onAdClicked();
            } else if (i != 2) {
            } else {
                rewardedVideoAdListenerMap.get(str).onAdClicked();
            }
        } catch (Exception unused) {
        }
    }

    public static void AdLoadFailed(int i, String str, int i2) {
        AdapterErrorType adapterErrorType;
        int i3;
        try {
            if (i2 != 2) {
                adapterErrorType = AdapterErrorType.ADAPTER_ERROR_TYPE_INTERNAL;
                i3 = IronSourceError.ERROR_IS_SHOW_EXCEPTION;
            } else {
                adapterErrorType = AdapterErrorType.ADAPTER_ERROR_TYPE_NO_FILL;
                i3 = 1158;
            }
            if (i == 1) {
                interstitialAdListenerMap.get(str).onAdLoadFailed(adapterErrorType, i3, null);
            } else if (i == 2) {
                rewardedVideoAdListenerMap.get(str).onAdLoadFailed(adapterErrorType, i3, null);
            }
        } catch (Exception unused) {
        }
    }

    public static void AdRewarded(int i, String str) {
        if (i == 2) {
            try {
                rewardedVideoAdListenerMap.get(str).onAdRewarded();
            } catch (Exception unused) {
            }
        }
    }

    public static void AdShowFailed(int i, String str, int i2) {
        try {
            if (i == 1) {
                interstitialAdListenerMap.get(str).onAdShowFailed(IronSourceError.ERROR_IS_SHOW_EXCEPTION, null);
            } else if (i != 2) {
            } else {
                rewardedVideoAdListenerMap.get(str).onAdShowFailed(IronSourceError.ERROR_IS_SHOW_EXCEPTION, null);
            }
        } catch (Exception unused) {
        }
    }

    public static void AdWasClosed(int i, String str) {
        try {
            if (i == 1) {
                interstitialAdListenerMap.get(str).onAdClosed();
            } else if (i != 2) {
            } else {
                rewardedVideoAdListenerMap.get(str).onAdClosed();
            }
        } catch (Exception unused) {
        }
    }

    public static void AdWasLoaded(int i, String str) {
        try {
            if (i == 1) {
                interstitialAdListenerMap.get(str).onAdLoadSuccess();
            } else if (i != 2) {
            } else {
                rewardedVideoAdListenerMap.get(str).onAdLoadSuccess();
            }
        } catch (Exception unused) {
        }
    }

    public static void AdWillShow(int i, String str) {
        try {
            if (i == 1) {
                interstitialAdListenerMap.get(str).onAdOpened();
                interstitialAdListenerMap.get(str).onAdShowSuccess();
            } else {
                if (i != 2) {
                    return;
                }
                rewardedVideoAdListenerMap.get(str).onAdOpened();
                rewardedVideoAdListenerMap.get(str).onAdShowSuccess();
            }
        } catch (Exception unused) {
        }
    }

    static void HideAd(int i) {
        try {
            nativeHideAd(i);
        } catch (Exception unused) {
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
        }
    }

    static boolean IsAdLoaded(int i, String str) {
        try {
            return nativeIsAdLoaded(i, str);
        } catch (Exception unused) {
            return false;
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
            return false;
        }
    }

    static void LoadAd(int i, String str) {
        try {
            nativeLoadAd(i, str);
        } catch (Exception unused) {
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
        }
    }

    static void ShowLoadedAd(int i, String str) {
        try {
            nativeShowLoadedAd(i, str);
        } catch (Exception unused) {
        } catch (UnsatisfiedLinkError e2) {
            e2.printStackTrace();
        }
    }

    static native void nativeHideAd(int i);

    static native boolean nativeIsAdLoaded(int i, String str);

    static native void nativeLoadAd(int i, String str);

    static native void nativeShowLoadedAd(int i, String str);

    @Override // com.json.mediationsdk.adunit.adapter.BaseAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getAdapterVersion() {
        return "1.0.0";
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public String getNetworkSDKVersion() {
        return "1.0.0";
    }

    @Override // com.json.mediationsdk.adunit.adapter.BaseAdapter, com.json.mediationsdk.adunit.adapter.internal.AdapterBaseInterface
    public void init(AdData adData, Context context, NetworkInitializationListener networkInitializationListener) {
        networkInitializationListener.onInitSuccess();
    }
}
