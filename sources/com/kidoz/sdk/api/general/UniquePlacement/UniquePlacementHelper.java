package com.kidoz.sdk.api.general.UniquePlacement;

import android.text.TextUtils;
import com.kidoz.sdk.api.general.EventMessage;
import com.kidoz.sdk.api.general.KidozError;
import com.kidoz.sdk.api.ui_views.interstitial.BaseInterstitial;
import org.greenrobot.eventbus.EventBus;
import org.greenrobot.eventbus.k;

/* JADX INFO: loaded from: classes4.dex */
public class UniquePlacementHelper {
    private BaseInterstitial.IOnInterstitialEventListener mExternalInterstitialListener;
    private BaseInterstitial.IOnInterstitialRewardedEventListener mExternalRewardedListener;
    private UniqueInterstitialListener mUniqueInterstitialListener;
    private UniquePlacementId mUniquePlacementId = new UniquePlacementId();

    /* JADX INFO: renamed from: com.kidoz.sdk.api.general.UniquePlacement.UniquePlacementHelper$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType;

        static {
            int[] iArr = new int[EventMessage.MessageType.values().length];
            $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType = iArr;
            try {
                iArr[EventMessage.MessageType.INTERSTITIAL_AD_CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.READY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.LOAD_FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.NO_OFFERS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.ON_AD_SHOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.ON_AD_FAILED_TO_SHOW.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.ON_AD_IMPRESSION.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.CLOSED.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[EventMessage.MessageType.REWARDED.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    public UniquePlacementHelper() {
        if (EventBus.getDefault().i(this)) {
            return;
        }
        EventBus.getDefault().o(this);
    }

    public void destroy() {
        EventBus.getDefault().q(this);
        this.mExternalRewardedListener = null;
        this.mExternalInterstitialListener = null;
        this.mUniqueInterstitialListener = null;
    }

    public String getUniqueId() {
        return this.mUniquePlacementId.getId();
    }

    @k
    public void onHandleEvent(EventMessage eventMessage) {
        String additionalParam = eventMessage.getAdditionalParam();
        if (TextUtils.isEmpty(additionalParam) || !additionalParam.equals(this.mUniquePlacementId.getId())) {
            return;
        }
        if (this.mUniqueInterstitialListener != null && AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[eventMessage.getMessageType().ordinal()] == 1) {
            this.mUniqueInterstitialListener.onInterstitialClose();
        }
        if (this.mExternalInterstitialListener != null) {
            switch (AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[eventMessage.getMessageType().ordinal()]) {
                case 2:
                    this.mExternalInterstitialListener.onAdLoaded();
                    break;
                case 3:
                    this.mExternalInterstitialListener.onFailedToLoad(eventMessage.getError());
                    break;
                case 4:
                    this.mExternalInterstitialListener.onFailedToLoad(new KidozError(KidozError.Type.noOffer));
                    break;
                case 5:
                    this.mExternalInterstitialListener.onAdShown();
                    break;
                case 6:
                    this.mExternalInterstitialListener.onAdFailedToShow(eventMessage.getError());
                    break;
                case 7:
                    this.mExternalInterstitialListener.onAdImpression();
                    break;
                case 8:
                    this.mExternalInterstitialListener.onClosed();
                    break;
            }
        }
        if (this.mExternalRewardedListener == null || AnonymousClass1.$SwitchMap$com$kidoz$sdk$api$general$EventMessage$MessageType[eventMessage.getMessageType().ordinal()] != 9) {
            return;
        }
        this.mExternalRewardedListener.onRewardReceived();
    }

    public void setExternalInterstitialListener(BaseInterstitial.IOnInterstitialEventListener iOnInterstitialEventListener) {
        this.mExternalInterstitialListener = iOnInterstitialEventListener;
    }

    public void setExternalRewardedListener(BaseInterstitial.IOnInterstitialRewardedEventListener iOnInterstitialRewardedEventListener) {
        this.mExternalRewardedListener = iOnInterstitialRewardedEventListener;
    }

    public void setInternalInterstitialListener(UniqueInterstitialListener uniqueInterstitialListener) {
        this.mUniqueInterstitialListener = uniqueInterstitialListener;
    }
}
