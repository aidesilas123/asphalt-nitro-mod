package com.json.adapters.custom.combo;

/* JADX INFO: loaded from: classes3.dex */
public class Types {

    public interface AdLoadFailedReason {
        public static final int Invalid_Server_Response = 0;
        public static final int Network_Error = 1;
        public static final int No_Ad_Available = 2;
    }

    public interface AdShowFailedReason {
        public static final int Already_Showing = 3;
        public static final int Cancelled = 4;
        public static final int Invalid_Server_Response = 0;
        public static final int Network_Error = 1;
        public static final int No_Ad_Available = 2;
        public static final int WebView_Crash = 5;
    }

    public interface AdType {
        public static final int Banner = 0;
        public static final int Incentivized = 2;
        public static final int Interstitial = 1;
    }
}
