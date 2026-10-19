package com.json;

/* JADX INFO: loaded from: classes2.dex */
public class h6 {

    public enum a {
        None,
        Device,
        Controller
    }

    public enum b {
        None,
        Loading,
        Loaded,
        Ready,
        Failed
    }

    public enum c {
        Web,
        Native,
        None
    }

    public enum d {
        MODE_0(0),
        MODE_1(1),
        MODE_2(2),
        MODE_3(3);


        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f6138f;

        d(int i) {
            this.f6138f = i;
        }

        public int a() {
            return this.f6138f;
        }
    }

    public enum e {
        Banner,
        OfferWall,
        Interstitial,
        OfferWallCredits,
        RewardedVideo,
        NativeAd,
        None
    }
}
