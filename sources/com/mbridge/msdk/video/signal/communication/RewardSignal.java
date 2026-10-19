package com.mbridge.msdk.video.signal.communication;

import android.os.Handler;
import android.os.Looper;
import com.mbridge.msdk.foundation.tools.af;

/* JADX INFO: loaded from: classes4.dex */
public class RewardSignal extends BaseRewardSignal implements IRewardCommunication {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Handler f7574e = new Handler(Looper.getMainLooper());

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void getEndScreenInfo(final Object obj, final String str) {
        if (af.b()) {
            super.getEndScreenInfo(obj, str);
        } else {
            this.f7574e.post(new Runnable() { // from class: com.mbridge.msdk.video.signal.communication.RewardSignal.1
                @Override // java.lang.Runnable
                public final void run() {
                    RewardSignal.super.getEndScreenInfo(obj, str);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void handlerPlayableException(final Object obj, final String str) {
        if (af.b()) {
            super.handlerPlayableException(obj, str);
        } else {
            this.f7574e.post(new Runnable() { // from class: com.mbridge.msdk.video.signal.communication.RewardSignal.7
                @Override // java.lang.Runnable
                public final void run() {
                    RewardSignal.super.handlerPlayableException(obj, str);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void install(final Object obj, final String str) {
        if (af.b()) {
            super.install(obj, str);
        } else {
            this.f7574e.post(new Runnable() { // from class: com.mbridge.msdk.video.signal.communication.RewardSignal.2
                @Override // java.lang.Runnable
                public final void run() {
                    RewardSignal.super.install(obj, str);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void notifyCloseBtn(final Object obj, final String str) {
        if (af.b()) {
            super.notifyCloseBtn(obj, str);
        } else {
            this.f7574e.post(new Runnable() { // from class: com.mbridge.msdk.video.signal.communication.RewardSignal.3
                @Override // java.lang.Runnable
                public final void run() {
                    RewardSignal.super.notifyCloseBtn(obj, str);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void openURL(final Object obj, final String str) {
        if (af.b()) {
            super.openURL(obj, str);
        } else {
            this.f7574e.post(new Runnable() { // from class: com.mbridge.msdk.video.signal.communication.RewardSignal.8
                @Override // java.lang.Runnable
                public final void run() {
                    RewardSignal.super.openURL(obj, str);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void setOrientation(final Object obj, final String str) {
        if (af.b()) {
            super.setOrientation(obj, str);
        } else {
            this.f7574e.post(new Runnable() { // from class: com.mbridge.msdk.video.signal.communication.RewardSignal.6
                @Override // java.lang.Runnable
                public final void run() {
                    RewardSignal.super.setOrientation(obj, str);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void toggleCloseBtn(final Object obj, final String str) {
        if (af.b()) {
            super.toggleCloseBtn(obj, str);
        } else {
            this.f7574e.post(new Runnable() { // from class: com.mbridge.msdk.video.signal.communication.RewardSignal.4
                @Override // java.lang.Runnable
                public final void run() {
                    RewardSignal.super.toggleCloseBtn(obj, str);
                }
            });
        }
    }

    @Override // com.mbridge.msdk.video.signal.communication.BaseRewardSignal, com.mbridge.msdk.video.signal.communication.IRewardCommunication
    public void triggerCloseBtn(final Object obj, final String str) {
        if (af.b()) {
            super.triggerCloseBtn(obj, str);
        } else {
            this.f7574e.post(new Runnable() { // from class: com.mbridge.msdk.video.signal.communication.RewardSignal.5
                @Override // java.lang.Runnable
                public final void run() {
                    RewardSignal.super.getEndScreenInfo(obj, str);
                }
            });
        }
    }
}
