package com.mbridge.msdk.video.module;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.iab.omid.library.mmadbridge.adsession.AdSession;
import com.iab.omid.library.mmadbridge.adsession.FriendlyObstructionPurpose;
import com.iab.omid.library.mmadbridge.adsession.media.InteractionType;
import com.iab.omid.library.mmadbridge.adsession.media.MediaEvents;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.c.e;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeBaitClickView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeSegmentsProgressBar;
import com.mbridge.msdk.dycreator.baseview.cusview.SoundImageView;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewParameters;
import com.mbridge.msdk.dycreator.baseview.rewardpopview.MBAcquireRewardPopView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.c.c;
import com.mbridge.msdk.foundation.same.report.m;
import com.mbridge.msdk.foundation.same.report.q;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.ac;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.ak;
import com.mbridge.msdk.foundation.tools.al;
import com.mbridge.msdk.foundation.tools.l;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener;
import com.mbridge.msdk.playercommon.PlayerView;
import com.mbridge.msdk.video.dynview.e.g;
import com.mbridge.msdk.video.signal.i;
import com.mbridge.msdk.widget.FeedBackButton;
import com.mbridge.msdk.widget.dialog.MBAlertDialog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes4.dex */
public class MBridgeVideoView extends MBridgeBaseView implements i {
    private static boolean al;
    private static int n;
    private static int o;
    private static int p;
    private static int q;
    private static int r;
    private ImageView A;
    private MBridgeSegmentsProgressBar B;
    private com.mbridge.msdk.video.module.a.a C;
    private com.mbridge.msdk.video.dynview.e.a D;
    private int E;
    private boolean F;
    private FrameLayout G;
    private MBridgeClickCTAView H;
    private com.mbridge.msdk.video.signal.factory.b I;
    private int J;
    private RelativeLayout K;
    private boolean L;
    private boolean M;
    private boolean N;
    private String O;
    private int P;
    private int Q;
    private int R;
    private MBAlertDialog S;
    private com.mbridge.msdk.widget.dialog.a T;
    private String U;
    private double V;
    private double W;
    private boolean aA;
    private AlphaAnimation aB;
    private MBridgeBaitClickView aC;
    private int aD;
    private int aE;
    private int aF;
    private int aG;
    private AcquireRewardPopViewParameters aH;
    private MBAcquireRewardPopView aI;
    private b aJ;
    private boolean aK;
    private Runnable aL;
    private final Runnable aM;
    private boolean aa;
    private boolean ab;
    private boolean ac;
    private boolean ad;
    private boolean ae;
    private boolean af;
    private boolean ag;
    private boolean ah;
    private boolean ai;
    private int aj;
    private boolean ak;
    private int am;
    private AdSession an;
    private MediaEvents ao;
    private String ap;
    private int aq;
    private int ar;
    private int as;
    private boolean at;
    private boolean au;
    private boolean av;
    private boolean aw;
    private boolean ax;
    private boolean ay;
    private boolean az;
    public List<CampaignEx> mCampOrderViewData;
    public int mCampaignSize;
    public int mCurrPlayNum;
    public int mCurrentPlayProgressTime;
    public int mMuteSwitch;
    private PlayerView s;
    private SoundImageView t;
    private TextView u;
    private View v;
    private RelativeLayout w;
    private ImageView x;
    private ProgressBar y;
    private FeedBackButton z;

    /* JADX INFO: renamed from: com.mbridge.msdk.video.module.MBridgeVideoView$2, reason: invalid class name */
    final class AnonymousClass2 implements c {
        AnonymousClass2() {
        }

        @Override // com.mbridge.msdk.foundation.same.c.c
        public final void onFailedLoad(String str, String str2) {
            aa.d(MBridgeBaseView.TAG, str);
        }

        @Override // com.mbridge.msdk.foundation.same.c.c
        public final void onSuccessLoad(final Bitmap bitmap, String str) {
            if (bitmap != null) {
                try {
                    if (bitmap.isRecycled() || MBridgeVideoView.this.x == null) {
                        return;
                    }
                    com.mbridge.msdk.foundation.same.f.b.d().execute(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                final Bitmap bitmapA = l.a(bitmap, 10);
                                MBridgeVideoView.this.x.post(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.2.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        MBridgeVideoView.this.x.setVisibility(0);
                                        MBridgeVideoView.this.x.setImageBitmap(bitmapA);
                                    }
                                });
                            } catch (Exception e2) {
                                aa.d(MBridgeBaseView.TAG, e2.getMessage());
                            }
                        }
                    });
                } catch (Throwable th) {
                    aa.d(MBridgeBaseView.TAG, th.getMessage());
                }
            }
        }
    }

    public static class a {
        public int a;
        public int b;
        public boolean c;

        public final String toString() {
            return "ProgressData{curPlayPosition=" + this.a + ", allDuration=" + this.b + '}';
        }
    }

    private static final class b extends DefaultVideoPlayerStatusListener {
        private MBridgeVideoView a;
        private int b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f7556d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f7557e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private MediaEvents f7558f;
        private boolean k;
        private String l;
        private CampaignEx m;
        private int n;
        private int o;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private a f7559g = new a();
        private boolean h = false;
        private boolean i = false;
        private boolean j = false;
        private boolean p = false;

        public b(MBridgeVideoView mBridgeVideoView) {
            this.a = mBridgeVideoView;
            if (mBridgeVideoView != null) {
                this.l = mBridgeVideoView.getUnitId();
                this.m = mBridgeVideoView.getCampaign();
            }
        }

        private void d() {
            MBridgeVideoView mBridgeVideoView = this.a;
            if (mBridgeVideoView == null) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) mBridgeVideoView.u.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = -2;
                layoutParams.height = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 25.0f);
                this.a.u.setLayoutParams(layoutParams);
            }
            int iB = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 5.0f);
            this.a.u.setPadding(iB, 0, iB, 0);
        }

        public final int a() {
            return this.b;
        }

        public final void a(int i, int i2) {
            int i3;
            CampaignEx campaignEx;
            String str;
            this.n = i;
            this.o = i2;
            if (!ac.a().a("h_c_r_w_p_c", false) || (i3 = this.n) == 100 || this.o != 0 || this.p || i3 == 0 || (campaignEx = this.m) == null) {
                return;
            }
            try {
                if (campaignEx.getAdType() == 94 || this.m.getAdType() == 287) {
                    str = this.m.getRequestId() + this.m.getId() + this.m.getVideoUrlEncode();
                } else {
                    str = this.m.getId() + this.m.getVideoUrlEncode() + this.m.getBidToken();
                }
                com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.c.getInstance().a(this.l, str);
                if (aVarA != null) {
                    aVarA.o();
                    this.p = true;
                    if (MBridgeConstans.DEBUG) {
                        aa.d("DefaultVideoPlayerStatusListener", "CDRate is : 0  and start download when player create!");
                    }
                }
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    aa.d("DefaultVideoPlayerStatusListener", e2.getMessage());
                }
            }
        }

        public final void a(CampaignEx campaignEx) {
            this.m = campaignEx;
        }

        public final void a(String str) {
            this.l = str;
        }

        public final void a(boolean z) {
            this.k = z;
        }

        public final int b() {
            return this.f7556d;
        }

        public final void c() {
            this.a = null;
            boolean unused = MBridgeVideoView.al = false;
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onBufferingEnd() {
            try {
                super.onBufferingEnd();
                MediaEvents mediaEvents = this.f7558f;
                if (mediaEvents != null) {
                    mediaEvents.bufferFinish();
                    aa.a("omsdk", "play:  videoEvents.bufferFinish()");
                }
                this.a.f7551e.a(14, "");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onBufferingStart(String str) {
            try {
                super.onBufferingStart(str);
                MediaEvents mediaEvents = this.f7558f;
                if (mediaEvents != null) {
                    mediaEvents.bufferStart();
                }
                this.a.f7551e.a(13, "");
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlayCompleted() {
            MBridgeVideoView mBridgeVideoView;
            super.onPlayCompleted();
            this.a.ax = true;
            if (this.m != null) {
                this.a.u.setText(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                this.m.setVideoPlayProgress(100);
                if (this.m.getAdSpaceT() == 2) {
                    this.a.v.setVisibility(4);
                    if (this.a.z != null) {
                        this.a.z.setClickable(false);
                    }
                    if (this.a.t != null) {
                        this.a.t.setClickable(false);
                    }
                }
            } else {
                this.a.u.setText("0");
            }
            MediaEvents mediaEvents = this.f7558f;
            if (mediaEvents != null) {
                mediaEvents.complete();
                aa.a("omsdk", "play:  videoEvents.complete()");
            }
            this.a.s.setClickable(false);
            String strB = this.a.b(true);
            CampaignEx campaignEx = this.m;
            if (campaignEx != null && campaignEx.getDynamicTempCode() == 5 && (mBridgeVideoView = this.a) != null && mBridgeVideoView.D != null) {
                MBridgeVideoView mBridgeVideoView2 = this.a;
                if (mBridgeVideoView2.mCampaignSize > mBridgeVideoView2.mCurrPlayNum) {
                    HashMap map = new HashMap();
                    map.put(o2.h.L, Integer.valueOf(this.a.mCurrPlayNum));
                    int i = this.a.mMuteSwitch;
                    if (i != 0) {
                        map.put(CampaignEx.JSON_NATIVE_VIDEO_MUTE, Integer.valueOf(i));
                    }
                    this.a.D.a(map);
                    return;
                }
            }
            this.a.f7551e.a(121, "");
            this.a.f7551e.a(11, strB);
            int i2 = this.c;
            this.b = i2;
            this.a.mCurrentPlayProgressTime = i2;
            boolean unused = MBridgeVideoView.al = true;
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlayError(String str) {
            aa.d("DefaultVideoPlayerStatusListener", "errorStr" + str);
            super.onPlayError(str);
            MBridgeVideoView mBridgeVideoView = this.a;
            if (mBridgeVideoView != null) {
                mBridgeVideoView.f7551e.a(12, str);
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlayProgress(int i, int i2) {
            int i3;
            String str;
            CampaignEx campaignEx;
            int videoCompleteTime;
            String str2;
            StringBuilder sb;
            String string;
            int i4;
            StringBuilder sb2;
            int i5;
            super.onPlayProgress(i, i2);
            if (this.a.f7552f) {
                CampaignEx campaignEx2 = this.m;
                int i6 = 0;
                if (campaignEx2 != null) {
                    videoCompleteTime = campaignEx2.getVideoCompleteTime();
                    if (videoCompleteTime <= 0) {
                        videoCompleteTime = i2;
                    }
                    com.mbridge.msdk.foundation.c.b.a().a(this.m.getCampaignUnitId() + "_1", i);
                } else {
                    videoCompleteTime = 0;
                }
                str2 = "0";
                if (this.m.isDynamicView() && this.m.getDynamicTempCode() == 5) {
                    try {
                        int i7 = this.a.E;
                        MBridgeVideoView mBridgeVideoView = this.a;
                        if (mBridgeVideoView != null) {
                            String string2 = (String) mBridgeVideoView.getContext().getResources().getText(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING));
                            String str3 = (String) this.a.getContext().getResources().getText(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING));
                            if (videoCompleteTime >= 0) {
                                i5 = videoCompleteTime - i;
                                if (i5 > 0) {
                                    string2 = i5 + str3;
                                }
                            } else {
                                i4 = i7 - i;
                                if (i4 <= 0) {
                                    if (videoCompleteTime > 0) {
                                        str2 = string2;
                                    }
                                    this.f7559g.a = i;
                                    this.a.u.setText(str2);
                                    if (this.a.y != null && this.a.y.getVisibility() == 0) {
                                        this.a.y.setProgress(i);
                                    }
                                    if (i4 < this.a.aG && this.a.aI != null && this.a.N) {
                                        this.a.aI.onTimeLessThanReduce(i4);
                                    }
                                } else {
                                    if (videoCompleteTime <= 0) {
                                        sb2 = new StringBuilder();
                                        sb2.append(i4);
                                        sb2.append("");
                                    } else {
                                        sb2 = new StringBuilder();
                                        sb2.append(i4);
                                        sb2.append(str3);
                                    }
                                    string2 = sb2.toString();
                                    i5 = i4;
                                }
                            }
                            i4 = i5;
                            str2 = string2;
                            this.f7559g.a = i;
                            this.a.u.setText(str2);
                            if (this.a.y != null) {
                                this.a.y.setProgress(i);
                            }
                            if (i4 < this.a.aG) {
                                this.a.aI.onTimeLessThanReduce(i4);
                            }
                        }
                    } catch (Exception e2) {
                        aa.d("DefaultVideoPlayerStatusListener", e2.getMessage());
                    }
                } else {
                    MBridgeVideoView mBridgeVideoView2 = this.a;
                    if (mBridgeVideoView2 != null) {
                        if (this.k) {
                            string = String.format("%s", Integer.valueOf(i2 - i));
                        } else {
                            if (videoCompleteTime > i2) {
                                videoCompleteTime = i2;
                            }
                            int i8 = videoCompleteTime <= 0 ? i2 - i : videoCompleteTime - i;
                            if (i8 <= 0) {
                                string = videoCompleteTime > 0 ? (String) mBridgeVideoView2.getContext().getResources().getText(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_reward_video_view_reward_time_complete", TypedValues.Custom.S_STRING)) : "0";
                            } else {
                                if (videoCompleteTime <= 0) {
                                    sb = new StringBuilder();
                                    sb.append(i8);
                                    sb.append("");
                                } else {
                                    sb = new StringBuilder();
                                    sb.append(i8);
                                    sb.append((String) this.a.getContext().getResources().getText(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_reward_video_view_reward_time_left", TypedValues.Custom.S_STRING)));
                                }
                                string = sb.toString();
                                i6 = i8;
                            }
                            if (i6 < this.a.aG && this.a.aI != null && this.a.N) {
                                this.a.aI.onTimeLessThanReduce(i6);
                            }
                        }
                        this.a.u.setText(string);
                        if (this.a.y != null && this.a.y.getVisibility() == 0) {
                            this.a.y.setProgress(i);
                        }
                    }
                    this.f7559g.a = i;
                }
            }
            this.c = i2;
            a aVar = this.f7559g;
            aVar.b = i2;
            aVar.c = this.a.ay;
            this.b = i;
            if (this.a.A != null) {
                this.a.A.setTag("" + this.b);
            }
            MBridgeVideoView mBridgeVideoView3 = this.a;
            mBridgeVideoView3.mCurrentPlayProgressTime = i;
            mBridgeVideoView3.f7551e.a(15, this.f7559g);
            MediaEvents mediaEvents = this.f7558f;
            if (mediaEvents != null) {
                int i9 = (i * 100) / i2;
                int i10 = ((i + 1) * 100) / i2;
                if (i9 <= 25 && 25 < i10 && !this.h) {
                    this.h = true;
                    mediaEvents.firstQuartile();
                    aa.a("omsdk", "play:  videoEvents.firstQuartile()");
                } else if (i9 <= 50 && 50 < i10 && !this.i) {
                    this.i = true;
                    mediaEvents.midpoint();
                    aa.a("omsdk", "play:  videoEvents.midpoint()");
                } else if (i9 <= 75 && 75 < i10 && !this.j) {
                    this.j = true;
                    mediaEvents.thirdQuartile();
                    aa.a("omsdk", "play:  videoEvents.thirdQuartile()");
                }
            }
            if (this.a.ak && !this.a.at && this.a.aq == com.mbridge.msdk.foundation.same.a.p) {
                this.a.b();
            }
            try {
                MBridgeVideoView mBridgeVideoView4 = this.a;
                if (mBridgeVideoView4 != null && mBridgeVideoView4.B != null) {
                    int i11 = (i * 100) / i2;
                    this.a.B.setProgress(i11, this.a.mCurrPlayNum - 1);
                    this.m.setVideoPlayProgress(i11);
                }
                MBridgeVideoView mBridgeVideoView5 = this.a;
                if (mBridgeVideoView5 != null && mBridgeVideoView5.J != -1 && i == this.a.J && (campaignEx = this.a.b) != null && campaignEx.isDynamicView()) {
                    this.a.setCTALayoutVisibleOrGone();
                }
            } catch (Throwable th) {
                aa.d("DefaultVideoPlayerStatusListener", th.getMessage());
            }
            int i12 = this.n;
            if (i12 == 100 || this.p || i12 == 0) {
                return;
            }
            if (this.o > i12) {
                this.o = i12 / 2;
            }
            int i13 = this.o;
            if (i13 < 0 || i < (i3 = (i2 * i13) / 100)) {
                return;
            }
            if (this.m.getAdType() == 94 || this.m.getAdType() == 287) {
                str = this.m.getRequestId() + this.m.getId() + this.m.getVideoUrlEncode();
            } else {
                str = this.m.getId() + this.m.getVideoUrlEncode() + this.m.getBidToken();
            }
            com.mbridge.msdk.videocommon.download.a aVarA = com.mbridge.msdk.videocommon.download.c.getInstance().a(this.l, str);
            if (aVarA != null) {
                aVarA.o();
                this.p = true;
                aa.d("DefaultVideoPlayerStatusListener", "CDRate is : " + i3 + " and start download !");
            }
        }

        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        public final void onPlaySetDataSourceError(String str) {
            super.onPlaySetDataSourceError(str);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x006d  */
        @Override // com.mbridge.msdk.playercommon.DefaultVideoPlayerStatusListener, com.mbridge.msdk.playercommon.VideoPlayerStatusListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final void onPlayStarted(int r10) {
            /*
                Method dump skipped, instruction units count: 354
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.module.MBridgeVideoView.b.onPlayStarted(int):void");
        }
    }

    public MBridgeVideoView(Context context) {
        super(context);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.E = 0;
        this.mMuteSwitch = 0;
        this.L = false;
        this.M = false;
        this.N = false;
        this.U = "";
        this.aa = false;
        this.ab = false;
        this.ac = false;
        this.ad = false;
        this.ae = false;
        this.af = false;
        this.ag = false;
        this.ah = false;
        this.ai = false;
        this.ak = false;
        this.am = 2;
        this.at = false;
        this.au = false;
        this.av = false;
        this.aw = true;
        this.ax = false;
        this.ay = false;
        this.az = false;
        this.aA = false;
        this.aD = 0;
        this.aE = 5;
        this.aF = 5;
        this.aG = 5;
        this.aJ = new b(this);
        this.aK = false;
        this.aL = new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.3
            @Override // java.lang.Runnable
            public final void run() {
                if (MBridgeVideoView.this.G != null) {
                    MBridgeVideoView.this.G.setVisibility(8);
                }
            }
        };
        this.aM = new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.6
            @Override // java.lang.Runnable
            public final void run() {
                if (MBridgeVideoView.this.aE <= 0) {
                    MBridgeVideoView.this.showRewardPopView();
                    MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                    mBridgeVideoView.removeCallbacks(mBridgeVideoView.aM);
                } else {
                    MBridgeVideoView.N(MBridgeVideoView.this);
                    MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                    mBridgeVideoView2.postDelayed(mBridgeVideoView2.aM, 1000L);
                }
            }
        };
    }

    public MBridgeVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mCampaignSize = 1;
        this.mCurrPlayNum = 1;
        this.mCurrentPlayProgressTime = 0;
        this.E = 0;
        this.mMuteSwitch = 0;
        this.L = false;
        this.M = false;
        this.N = false;
        this.U = "";
        this.aa = false;
        this.ab = false;
        this.ac = false;
        this.ad = false;
        this.ae = false;
        this.af = false;
        this.ag = false;
        this.ah = false;
        this.ai = false;
        this.ak = false;
        this.am = 2;
        this.at = false;
        this.au = false;
        this.av = false;
        this.aw = true;
        this.ax = false;
        this.ay = false;
        this.az = false;
        this.aA = false;
        this.aD = 0;
        this.aE = 5;
        this.aF = 5;
        this.aG = 5;
        this.aJ = new b(this);
        this.aK = false;
        this.aL = new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.3
            @Override // java.lang.Runnable
            public final void run() {
                if (MBridgeVideoView.this.G != null) {
                    MBridgeVideoView.this.G.setVisibility(8);
                }
            }
        };
        this.aM = new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.6
            @Override // java.lang.Runnable
            public final void run() {
                if (MBridgeVideoView.this.aE <= 0) {
                    MBridgeVideoView.this.showRewardPopView();
                    MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                    mBridgeVideoView.removeCallbacks(mBridgeVideoView.aM);
                } else {
                    MBridgeVideoView.N(MBridgeVideoView.this);
                    MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                    mBridgeVideoView2.postDelayed(mBridgeVideoView2.aM, 1000L);
                }
            }
        };
    }

    static /* synthetic */ int N(MBridgeVideoView mBridgeVideoView) {
        int i = mBridgeVideoView.aE;
        mBridgeVideoView.aE = i - 1;
        return i;
    }

    private String a(int i, int i2) {
        if (i2 != 0) {
            try {
                return af.a(Double.valueOf(i / i2)) + "";
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return i2 + "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        boolean zE = e();
        this.f7552f = zE;
        if (!zE) {
            aa.d(MBridgeBaseView.TAG, "MBridgeVideoView init fail");
        }
        c();
        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 100.0f);
        this.aB = alphaAnimation;
        alphaAnimation.setDuration(200L);
    }

    static /* synthetic */ void a(MBridgeVideoView mBridgeVideoView, String str) {
        JSONObject jSONObject;
        JSONException e2;
        if (mBridgeVideoView.C != null) {
            CampaignEx campaignEx = mBridgeVideoView.b;
            if (campaignEx != null) {
                try {
                    CampaignEx.c rewardTemplateMode = campaignEx.getRewardTemplateMode();
                    String str2 = "";
                    if (rewardTemplateMode != null) {
                        str2 = rewardTemplateMode.b() + "";
                    }
                    q.a(mBridgeVideoView.a, str, mBridgeVideoView.b.getCampaignUnitId(), mBridgeVideoView.b.isBidCampaign(), mBridgeVideoView.b.getRequestId(), mBridgeVideoView.b.getRequestIdNotice(), mBridgeVideoView.b.getId(), str2);
                } catch (Exception e3) {
                    e3.printStackTrace();
                }
            }
            try {
                jSONObject = new JSONObject();
                try {
                    jSONObject.put(com.mbridge.msdk.foundation.same.a.h, mBridgeVideoView.a(0));
                } catch (JSONException e4) {
                    e2 = e4;
                    e2.printStackTrace();
                }
            } catch (JSONException e5) {
                jSONObject = null;
                e2 = e5;
            }
            mBridgeVideoView.C.a(105, jSONObject);
            if (com.mbridge.msdk.foundation.controller.b.d().g() != null) {
                try {
                    com.mbridge.msdk.video.module.b.b.d(com.mbridge.msdk.foundation.controller.b.d().g().getApplicationContext(), mBridgeVideoView.b);
                } catch (Exception e6) {
                    aa.d(MBridgeBaseView.TAG, e6.getMessage());
                }
            }
        }
    }

    private void a(String str) {
        com.mbridge.msdk.foundation.same.c.b.a(com.mbridge.msdk.foundation.controller.b.d().g()).a(str, new AnonymousClass2());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String b(boolean z) {
        if (!this.ak) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            if (!this.at) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.s);
            }
            if (this.av) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.u);
            }
            if (this.au) {
                jSONObject.put("Alert_window_status", com.mbridge.msdk.foundation.same.a.t);
            }
            jSONObject.put("complete_info", z ? 1 : 2);
            return jSONObject.toString();
        } catch (Exception unused) {
            aa.d(MBridgeBaseView.TAG, "getIVRewardStatusString ERROR");
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int i;
        com.mbridge.msdk.video.module.a.a aVar;
        try {
            if (!this.ak || ((i = this.aq) != com.mbridge.msdk.foundation.same.a.o && i != com.mbridge.msdk.foundation.same.a.p)) {
                CampaignEx campaignEx = this.b;
                if (campaignEx == null || campaignEx.getAdSpaceT() == 2) {
                    com.mbridge.msdk.video.module.a.a aVar2 = this.f7551e;
                    if (aVar2 != null) {
                        aVar2.a(2, "");
                        return;
                    }
                    return;
                }
                int iK = k();
                int curPosition = this.s.getCurPosition() / 1000;
                boolean z = false;
                if (this.b.getDynamicTempCode() != 5 || this.mCurrPlayNum <= 1 ? !((iK <= 0 || curPosition >= iK) && iK != 0) : !(iK == 0 || iK <= 0 || curPosition >= iK)) {
                    z = true;
                }
                if (!z || this.R != 1 || this.ai) {
                    com.mbridge.msdk.video.module.a.a aVar3 = this.f7551e;
                    if (aVar3 != null) {
                        aVar3.a(2, "");
                        return;
                    }
                    return;
                }
                f();
                com.mbridge.msdk.video.module.a.a aVar4 = this.f7551e;
                if (aVar4 != null) {
                    aVar4.a(8, "");
                    return;
                }
                return;
            }
            if (this.at) {
                if (i != com.mbridge.msdk.foundation.same.a.p || (aVar = this.f7551e) == null) {
                    return;
                }
                aVar.a(2, b(this.ax));
                return;
            }
            if (i == com.mbridge.msdk.foundation.same.a.p && this.az) {
                com.mbridge.msdk.video.module.a.a aVar5 = this.f7551e;
                if (aVar5 != null) {
                    aVar5.a(2, b(this.ax));
                    return;
                }
                return;
            }
            if (this.aw) {
                int curPosition2 = this.s.getCurPosition() / 1000;
                int videoLength = (int) ((curPosition2 / (this.s.getDuration() == 0 ? this.b.getVideoLength() : this.s.getDuration())) * 100.0f);
                if (this.aq == com.mbridge.msdk.foundation.same.a.o) {
                    f();
                    int i2 = this.ar;
                    if (i2 == com.mbridge.msdk.foundation.same.a.q && videoLength >= this.as) {
                        com.mbridge.msdk.video.module.a.a aVar6 = this.f7551e;
                        if (aVar6 != null) {
                            aVar6.a(2, b(this.ax));
                            return;
                        }
                        return;
                    }
                    if (i2 == com.mbridge.msdk.foundation.same.a.r && curPosition2 >= this.as) {
                        com.mbridge.msdk.video.module.a.a aVar7 = this.f7551e;
                        if (aVar7 != null) {
                            aVar7.a(2, b(this.ax));
                            return;
                        }
                        return;
                    }
                    com.mbridge.msdk.video.module.a.a aVar8 = this.f7551e;
                    if (aVar8 != null) {
                        aVar8.a(8, "");
                    }
                }
                if (this.aq == com.mbridge.msdk.foundation.same.a.p) {
                    int i3 = this.ar;
                    if (i3 == com.mbridge.msdk.foundation.same.a.q && videoLength >= this.as) {
                        f();
                        com.mbridge.msdk.video.module.a.a aVar9 = this.f7551e;
                        if (aVar9 != null) {
                            aVar9.a(8, "");
                            return;
                        }
                        return;
                    }
                    if (i3 != com.mbridge.msdk.foundation.same.a.r || curPosition2 < this.as) {
                        return;
                    }
                    f();
                    com.mbridge.msdk.video.module.a.a aVar10 = this.f7551e;
                    if (aVar10 != null) {
                        aVar10.a(8, "");
                    }
                }
            }
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    private boolean e() {
        try {
            this.s = (PlayerView) findViewById(filterFindViewId(this.aA, "mbridge_vfpv"));
            this.u = (TextView) findViewById(filterFindViewId(this.aA, "mbridge_tv_count"));
            View viewFindViewById = findViewById(filterFindViewId(this.aA, "mbridge_rl_playing_close"));
            this.v = viewFindViewById;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(4);
            }
            this.w = (RelativeLayout) findViewById(filterFindViewId(this.aA, "mbridge_top_control"));
            this.x = (ImageView) findViewById(filterFindViewId(this.aA, "mbridge_videoview_bg"));
            this.y = (ProgressBar) findViewById(filterFindViewId(this.aA, "mbridge_video_progress_bar"));
            this.z = (FeedBackButton) findViewById(filterFindViewId(this.aA, "mbridge_native_endcard_feed_btn"));
            ImageView imageView = (ImageView) findViewById(filterFindViewId(this.aA, "mbridge_iv_link"));
            this.A = imageView;
            af.a(1, imageView, this.b, this.a, false, new com.mbridge.msdk.foundation.c.a() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.12
                @Override // com.mbridge.msdk.foundation.c.a
                public final void a() {
                    MBridgeVideoView.this.f();
                }

                @Override // com.mbridge.msdk.foundation.c.a
                public final void a(String str) {
                    MBridgeVideoView.this.g();
                }

                @Override // com.mbridge.msdk.foundation.c.a
                public final void b() {
                    MBridgeVideoView.this.g();
                }
            });
            this.t = (SoundImageView) findViewById(filterFindViewId(this.aA, "mbridge_sound_switch"));
            this.B = (MBridgeSegmentsProgressBar) findViewById(filterFindViewId(this.aA, "mbridge_reward_segment_progressbar"));
            this.G = (FrameLayout) findViewById(filterFindViewId(this.aA, "mbridge_reward_cta_layout"));
            this.aC = (MBridgeBaitClickView) findViewById(filterFindViewId(this.aA, "mbridge_animation_click_view"));
            this.K = (RelativeLayout) findViewById(filterFindViewId(this.aA, "mbridge_reward_moreoffer_layout"));
            this.aI = (MBAcquireRewardPopView) findViewById(filterFindViewId(this.aA, "mbridge_reward_popview"));
            return isNotNULL(this.s, this.t, this.u, this.v);
        } catch (Throwable th) {
            aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            PlayerView playerView = this.s;
            if (playerView != null) {
                playerView.onPause();
                CampaignEx campaignEx = this.b;
                if (campaignEx != null && !campaignEx.isRewardPopViewShowed) {
                    removeCallbacks(this.aM);
                }
                CampaignEx campaignEx2 = this.b;
                if (campaignEx2 != null && campaignEx2.getNativeVideoTracking() != null && !this.b.isHasReportAdTrackPause()) {
                    this.b.setHasReportAdTrackPause(true);
                    Context contextG = com.mbridge.msdk.foundation.controller.b.d().g();
                    CampaignEx campaignEx3 = this.b;
                    com.mbridge.msdk.click.a.a(contextG, campaignEx3, this.U, campaignEx3.getNativeVideoTracking().m(), false, false);
                }
                MediaEvents mediaEvents = this.ao;
                if (mediaEvents != null) {
                    mediaEvents.pause();
                    aa.a("omsdk", "play:  videoEvents.pause()");
                }
            }
        } catch (Throwable th) {
            aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        b bVar;
        CampaignEx campaignEx;
        try {
            if (!this.ab) {
                try {
                    if (this.ao != null) {
                        float duration = this.s.getDuration();
                        if (duration == 0.0f && (campaignEx = this.b) != null) {
                            duration = campaignEx.getVideoLength();
                        }
                        this.ao.start(duration, getMute() == 2 ? 1.0f : 0.0f);
                        aa.a("omsdk", "play: videoEvents.start()");
                    }
                } catch (IllegalArgumentException e2) {
                    aa.a(MBridgeBaseView.TAG, e2.getMessage());
                }
                boolean zPlayVideo = this.s.playVideo();
                CampaignEx campaignEx2 = this.b;
                if (campaignEx2 != null && campaignEx2.getPlayable_ads_without_video() != 2 && !zPlayVideo && (bVar = this.aJ) != null) {
                    bVar.onPlayError("play video failed");
                }
                this.ab = true;
                return;
            }
            MBAcquireRewardPopView mBAcquireRewardPopView = this.aI;
            if (mBAcquireRewardPopView != null && this.N) {
                mBAcquireRewardPopView.onResume();
            }
            if (this.N) {
                return;
            }
            this.s.onResume();
            CampaignEx campaignEx3 = this.b;
            if (campaignEx3 != null && !campaignEx3.isRewardPopViewShowed) {
                post(this.aM);
            }
            try {
                MediaEvents mediaEvents = this.ao;
                if (mediaEvents != null) {
                    mediaEvents.resume();
                    aa.a("omsdk", "play:  videoEvents.resume()");
                    return;
                }
                return;
            } catch (IllegalArgumentException e3) {
                aa.a(MBridgeBaseView.TAG, e3.getMessage());
                return;
            }
        } catch (Exception e4) {
            aa.b(MBridgeBaseView.TAG, e4.getMessage(), e4);
        }
        aa.b(MBridgeBaseView.TAG, e4.getMessage(), e4);
    }

    private void h() {
        float f2;
        float fI = af.i(this.a);
        float fH = af.h(this.a);
        int iB = af.b(getContext(), 58.0f);
        int iB2 = af.b(getContext(), 104.0f);
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.getAdSpaceT() == 2) {
            int iC = this.b.getRewardTemplateMode().c();
            if (iC == 1) {
                fI -= iB * 2;
                fH -= iB2 * 2;
            }
            if (iC == 2) {
                fI -= iB2 * 2;
                fH -= iB * 2;
            }
            if (iC == 0) {
                if (this.f7550d == 1) {
                    fI -= iB * 2;
                    f2 = iB2 * 2;
                } else {
                    fI -= iB2 * 2;
                    f2 = iB * 2;
                }
                fH -= f2;
            }
        }
        double d2 = this.V;
        if (d2 > 0.0d) {
            double d3 = this.W;
            if (d3 > 0.0d && fI > 0.0f && fH > 0.0f) {
                double d4 = d2 / d3;
                double d5 = fI / fH;
                aa.b(MBridgeBaseView.TAG, "videoWHDivide:" + d4 + "  screenWHDivide:" + d5);
                double dA = af.a(Double.valueOf(d4));
                double dA2 = af.a(Double.valueOf(d5));
                aa.b(MBridgeBaseView.TAG, "videoWHDivideFinal:" + dA + "  screenWHDivideFinal:" + dA2);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.s.getLayoutParams();
                if (dA > dA2) {
                    double d6 = (((double) fI) * this.W) / this.V;
                    layoutParams.width = -1;
                    layoutParams.height = (int) d6;
                    layoutParams.gravity = 17;
                } else if (dA < dA2) {
                    layoutParams.width = (int) (((double) fH) * d4);
                    layoutParams.height = -1;
                    layoutParams.gravity = 17;
                } else {
                    layoutParams.width = -1;
                    layoutParams.height = -1;
                }
                try {
                    CampaignEx campaignEx2 = this.b;
                    if (campaignEx2 != null && campaignEx2.isDynamicView()) {
                        int iB3 = this.b.getRewardTemplateMode().b();
                        int iC2 = this.b.getRewardTemplateMode().c();
                        if (iB3 == 102 || iB3 == 202) {
                            if (iC2 == 1) {
                                layoutParams.width = -1;
                                layoutParams.gravity = 17;
                                layoutParams.height = (int) (this.W / (this.V / ((double) fI)));
                            } else {
                                layoutParams.height = -1;
                                layoutParams.gravity = 17;
                                layoutParams.width = (int) (((double) fH) * d4);
                            }
                        }
                        if (iB3 == 202 && !TextUtils.isEmpty(this.b.getImageUrl())) {
                            a(this.b.getImageUrl());
                        }
                        if (iB3 == 302 || iB3 == 802) {
                            double d7 = this.V;
                            double d8 = this.W;
                            if (d7 / d8 > 1.0d) {
                                layoutParams.width = -1;
                                layoutParams.height = (int) ((d8 * ((double) fI)) / d7);
                            } else {
                                int iB4 = af.b(getContext(), 220.0f);
                                layoutParams.width = (int) ((this.V * ((double) iB4)) / this.W);
                                layoutParams.height = iB4;
                            }
                        }
                    }
                } catch (Throwable th) {
                    aa.d(MBridgeBaseView.TAG, th.getMessage());
                }
                this.s.setLayoutParams(layoutParams);
                setMatchParent();
                return;
            }
        }
        i();
    }

    private void i() {
        try {
            setLayoutParam(0, 0, -1, -1);
            if (isLandscape() || !this.f7552f) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.s.getLayoutParams();
            int i = af.i(this.a);
            layoutParams.width = -1;
            layoutParams.height = (i * 9) / 16;
            layoutParams.gravity = 17;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        CampaignEx campaignEx = this.b;
        if (campaignEx != null) {
            campaignEx.setCampaignUnitId(this.U);
            com.mbridge.msdk.foundation.c.b.a().a(this.U + "_1", this.b);
        }
        if (!com.mbridge.msdk.foundation.c.b.a().b()) {
            FeedBackButton feedBackButton = this.z;
            if (feedBackButton != null) {
                feedBackButton.setVisibility(8);
                return;
            }
            return;
        }
        if (this.z != null) {
            com.mbridge.msdk.foundation.c.b.a().a(this.U + "_1", this.z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int k() {
        int videoCompleteTime = 0;
        try {
            int iL = l();
            CampaignEx campaignEx = this.b;
            if (campaignEx == null) {
                return iL;
            }
            videoCompleteTime = campaignEx.getVideoCompleteTime();
            if (this.b.getDynamicTempCode() != 5 && videoCompleteTime > iL) {
                videoCompleteTime = iL;
            }
            if (videoCompleteTime <= 0) {
                return iL;
            }
        } catch (Throwable th) {
            aa.d(MBridgeBaseView.TAG, th.getMessage());
        }
        return videoCompleteTime;
    }

    private int l() {
        try {
            b bVar = this.aJ;
            int iB = bVar != null ? bVar.b() : 0;
            return iB == 0 ? this.b.getVideoLength() : iB;
        } catch (Throwable th) {
            aa.d(MBridgeBaseView.TAG, th.getMessage());
            return 0;
        }
    }

    static /* synthetic */ void s(MBridgeVideoView mBridgeVideoView) {
        String strE;
        CampaignEx campaignEx = mBridgeVideoView.b;
        if (campaignEx == null || !campaignEx.isDynamicView() || mBridgeVideoView.L) {
            return;
        }
        if (!TextUtils.isEmpty(mBridgeVideoView.b.getMof_template_url())) {
            strE = mBridgeVideoView.b.getMof_template_url();
        } else if (mBridgeVideoView.b.getRewardTemplateMode() == null) {
            return;
        } else {
            strE = mBridgeVideoView.b.getRewardTemplateMode().e();
        }
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = al.a(strE, "guideShow");
            String strA2 = al.a(strE, "guideDelay");
            String strA3 = al.a(strE, "guideTime");
            String strA4 = al.a(strE, "guideRewardTime");
            if (!TextUtils.isEmpty(strA)) {
                mBridgeVideoView.aD = Integer.parseInt(strA);
            }
            if (!TextUtils.isEmpty(strA2)) {
                int i = Integer.parseInt(strA2);
                mBridgeVideoView.aE = i;
                if (i > 10 || i < 3) {
                    mBridgeVideoView.aE = 5;
                }
            }
            if (!TextUtils.isEmpty(strA3)) {
                int i2 = Integer.parseInt(strA3);
                mBridgeVideoView.aF = i2;
                if (i2 > 10 || i2 < 3) {
                    mBridgeVideoView.aF = 5;
                }
            }
            if (!TextUtils.isEmpty(strA4)) {
                int i3 = Integer.parseInt(strA4);
                mBridgeVideoView.aG = i3;
                if (i3 > 10 || i3 < 5) {
                    mBridgeVideoView.aG = 5;
                }
            }
            int i4 = mBridgeVideoView.aD;
            if (i4 > 0 && i4 <= 2) {
                int iK = mBridgeVideoView.k();
                if (iK == 0 || iK > mBridgeVideoView.aE) {
                    int i5 = iK - mBridgeVideoView.aE;
                    if (i5 >= 0 && mBridgeVideoView.aG > i5) {
                        mBridgeVideoView.aG = i5;
                    }
                    int iL = mBridgeVideoView.l();
                    if (mBridgeVideoView.aG >= iL) {
                        mBridgeVideoView.aG = iL - mBridgeVideoView.aE;
                    }
                    if (mBridgeVideoView.aE >= iL) {
                        return;
                    }
                    ArrayList<String> arrayList = new ArrayList<>();
                    arrayList.add(mBridgeVideoView.b.getAppName());
                    e eVarG = f.a().g(com.mbridge.msdk.foundation.controller.b.d().h());
                    mBridgeVideoView.aH = new AcquireRewardPopViewParameters.Builder("", mBridgeVideoView.U, mBridgeVideoView.aD, eVarG != null ? eVarG.aH() : "US").setAutoDismissTime(mBridgeVideoView.aF).setReduceTime(mBridgeVideoView.aG).setBehaviourListener(new AcquireRewardPopViewBehaviourListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.5
                        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
                        public final void onOutOfContentClicked(float f2, float f3) {
                            if (MBridgeVideoView.this.C != null) {
                                MBridgeVideoView.this.C.a(105, "");
                            }
                        }

                        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
                        public final void onReceivedFail(String str) {
                            MBridgeVideoView.this.N = false;
                            MBridgeVideoView.this.setCover(false);
                            MBridgeVideoView.this.g();
                            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                            q.a(mBridgeVideoView2.b, mBridgeVideoView2.U, MBridgeVideoView.this.aD, 2, str);
                        }

                        @Override // com.mbridge.msdk.dycreator.baseview.rewardpopview.AcquireRewardPopViewBehaviourListener
                        public final void onReceivedSuccess(int i6) {
                            MBridgeVideoView.this.N = false;
                            MBridgeVideoView.this.setCover(false);
                            int iK2 = MBridgeVideoView.this.k() - i6;
                            MBridgeVideoView.this.b.setVideoCompleteTime(iK2);
                            MBridgeVideoView.this.g();
                            com.mbridge.msdk.video.module.a.a aVar = MBridgeVideoView.this.f7551e;
                            if (aVar != null) {
                                aVar.a(130, Integer.valueOf(iK2));
                            }
                            MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                            q.a(mBridgeVideoView2.b, mBridgeVideoView2.U, MBridgeVideoView.this.aD, 1, "");
                        }
                    }).setRightAnswerList(arrayList).build();
                    mBridgeVideoView.postDelayed(mBridgeVideoView.aM, 1000L);
                }
            }
        } catch (Throwable th) {
            aa.d(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void alertWebViewShowed() {
        this.M = true;
        setShowingAlertViewCover(true);
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    protected final void c() {
        super.c();
        if (this.f7552f) {
            if (!this.i) {
                this.s.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (MBridgeVideoView.this.f7551e != null) {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put(com.mbridge.msdk.foundation.same.a.h, MBridgeVideoView.this.s.buildH5JsonObject(0));
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            MBridgeVideoView.this.f7551e.a(1, jSONObject);
                        }
                    }
                });
            } else if (com.mbridge.msdk.video.dynview.i.a.a(this.b) == -1 || com.mbridge.msdk.video.dynview.i.a.a(this.b) == 100) {
                this.s.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.7
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (MBridgeVideoView.this.f7551e != null) {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put(com.mbridge.msdk.foundation.same.a.h, MBridgeVideoView.this.s.buildH5JsonObject(0));
                            } catch (Exception e2) {
                                e2.printStackTrace();
                            }
                            MBridgeVideoView.this.f7551e.a(1, jSONObject);
                        }
                        if (MBridgeVideoView.this.ao != null) {
                            MBridgeVideoView.this.ao.adUserInteraction(InteractionType.CLICK);
                        }
                        MBridgeVideoView.this.setCTALayoutVisibleOrGone();
                    }
                });
            }
            SoundImageView soundImageView = this.t;
            if (soundImageView != null) {
                soundImageView.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.9
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        Integer num = 2;
                        if (MBridgeVideoView.this.s != null && MBridgeVideoView.this.s.isSilent()) {
                            num = 1;
                        }
                        if (num.intValue() == 1) {
                            MBridgeVideoView.this.mMuteSwitch = 2;
                        } else {
                            MBridgeVideoView.this.mMuteSwitch = 1;
                        }
                        com.mbridge.msdk.video.module.a.a aVar = MBridgeVideoView.this.f7551e;
                        if (aVar != null) {
                            aVar.a(5, num);
                        }
                    }
                });
            }
            this.v.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    try {
                        HashMap map = new HashMap();
                        map.put("type", "1");
                        m.a().c(MBridgeVideoView.this.b.getCurrentLRid(), "2000152", map);
                        m.a().a("2000148", MBridgeVideoView.this.b, new HashMap());
                    } catch (Exception e2) {
                        if (MBridgeConstans.DEBUG) {
                            e2.printStackTrace();
                        }
                    }
                    if (!MBridgeVideoView.this.ak) {
                        MBridgeVideoView.this.b();
                        return;
                    }
                    MBridgeVideoView.this.az = true;
                    if (MBridgeVideoView.this.aw) {
                        MBridgeVideoView.this.b();
                        return;
                    }
                    com.mbridge.msdk.video.module.a.a aVar = MBridgeVideoView.this.f7551e;
                    if (aVar != null) {
                        aVar.a(123, "");
                    }
                }
            });
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void closeVideoOperate(int i, int i2) {
        if (i == 1) {
            this.az = true;
            if (getVisibility() == 0) {
                b();
            }
            try {
                HashMap map = new HashMap();
                map.put("type", "1");
                m.a().c(this.b.getCurrentLRid(), "2000152", map);
                m.a().a("2000148", this.b, new HashMap());
            } catch (Throwable th) {
                if (MBridgeConstans.DEBUG) {
                    th.printStackTrace();
                }
            }
        }
        if (i2 == 1) {
            gonePlayingCloseView();
            return;
        }
        if (i2 == 2) {
            if ((this.ay && getVisibility() == 0) || !this.f7552f || this.v.getVisibility() == 0) {
                return;
            }
            if (!this.i || this.F) {
                this.v.setVisibility(0);
            }
            this.ae = true;
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void defaultShow() {
        super.defaultShow();
        this.aa = true;
        showVideoLocation(0, 0, af.i(this.a), af.h(this.a), 0, 0, 0, 0, 0);
        videoOperate(1);
        if (this.P == 0) {
            closeVideoOperate(-1, 2);
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void dismissAllAlert() {
        MBAlertDialog mBAlertDialog = this.S;
        if (mBAlertDialog != null) {
            mBAlertDialog.dismiss();
        }
        com.mbridge.msdk.video.module.a.a aVar = this.f7551e;
        if (aVar != null) {
            aVar.a(125, "");
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewHeight() {
        return r;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewLeft() {
        return p;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewRadius() {
        return n;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewTop() {
        return o;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public int getBorderViewWidth() {
        return q;
    }

    public int getCloseAlert() {
        return this.R;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public String getCurrentProgress() {
        try {
            int iA = this.aJ.a();
            CampaignEx campaignEx = this.b;
            int videoLength = campaignEx != null ? campaignEx.getVideoLength() : 0;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("progress", a(iA, videoLength));
            jSONObject.put("time", iA);
            jSONObject.put("duration", videoLength + "");
            return jSONObject.toString();
        } catch (Throwable th) {
            aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
            return JsonUtils.EMPTY_JSON;
        }
    }

    public int getMute() {
        return this.am;
    }

    public String getUnitId() {
        return this.U;
    }

    public int getVideoSkipTime() {
        return this.P;
    }

    public void gonePlayingCloseView() {
        if (this.f7552f && this.v.getVisibility() != 8) {
            this.v.setVisibility(8);
            this.ae = false;
        }
        if (this.aK || this.ah || this.af) {
            return;
        }
        this.aK = true;
        int i = this.P;
        if (i < 0) {
            return;
        }
        if (i == 0) {
            this.ah = true;
        } else {
            new Handler().postDelayed(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.13
                @Override // java.lang.Runnable
                public final void run() {
                    MBridgeVideoView.this.ah = true;
                }
            }, this.P * 1000);
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void hideAlertView(int i) {
        if (this.M) {
            this.M = false;
            this.at = true;
            setShowingAlertViewCover(false);
            com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.U, false);
            q.a(this.a, this.b, com.mbridge.msdk.videocommon.d.c.a, this.U, 1, i);
            if (i == 0) {
                g();
                if (this.ak) {
                    int i2 = this.aq;
                    if (i2 == com.mbridge.msdk.foundation.same.a.p || i2 == com.mbridge.msdk.foundation.same.a.o) {
                        this.au = true;
                        com.mbridge.msdk.video.module.a.a aVar = this.f7551e;
                        if (aVar != null) {
                            aVar.a(124, "");
                        }
                        this.ay = true;
                        gonePlayingCloseView();
                        return;
                    }
                    return;
                }
                return;
            }
            this.av = true;
            boolean z = this.ak;
            if (z && this.aq == com.mbridge.msdk.foundation.same.a.p) {
                g();
                return;
            }
            if (z && this.aq == com.mbridge.msdk.foundation.same.a.o) {
                com.mbridge.msdk.video.module.a.a aVar2 = this.f7551e;
                if (aVar2 != null) {
                    aVar2.a(2, b(this.ax));
                    return;
                }
                return;
            }
            com.mbridge.msdk.video.module.a.a aVar3 = this.f7551e;
            if (aVar3 != null) {
                aVar3.a(2, "");
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void init(Context context) {
    }

    @Override // com.mbridge.msdk.video.signal.i
    public boolean isH5Canvas() {
        return getLayoutParams().height < af.h(this.a.getApplicationContext());
    }

    public boolean isMiniCardShowing() {
        return this.ad;
    }

    public boolean isRewardPopViewShowing() {
        return this.N;
    }

    public boolean isShowingAlertView() {
        return this.M;
    }

    public boolean isShowingTransparent() {
        return this.ai;
    }

    public boolean isfront() {
        ViewGroup viewGroup = (ViewGroup) getParent();
        if (viewGroup == null) {
            return false;
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        int childCount = viewGroup.getChildCount();
        int i = iIndexOfChild + 1;
        boolean z = false;
        while (i <= childCount - 1) {
            if (viewGroup.getChildAt(i).getVisibility() == 0 && this.ad) {
                return false;
            }
            i++;
            z = true;
        }
        return z;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void notifyCloseBtn(int i) {
        if (i == 0) {
            this.af = true;
            this.ah = false;
        } else if (i == 1) {
            this.ag = true;
        }
    }

    public void notifyVideoClose() {
        this.f7551e.a(2, "");
    }

    public void onActivityPause() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.aI;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onPause();
            }
        } catch (Throwable th) {
            aa.d(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void onActivityResume() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.aI;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onResume();
            }
        } catch (Throwable th) {
            aa.d(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void onActivityStop() {
        try {
            MBAcquireRewardPopView mBAcquireRewardPopView = this.aI;
            if (mBAcquireRewardPopView != null) {
                mBAcquireRewardPopView.onStop();
            }
        } catch (Throwable th) {
            aa.d(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void onBackPress() {
        if (this.ad || this.M || this.au) {
            return;
        }
        if (this.ae) {
            b();
            return;
        }
        boolean z = this.af;
        if (z && this.ag) {
            b();
        } else {
            if (z || !this.ah) {
                return;
            }
            b();
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView, android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        CampaignEx campaignEx = this.b;
        if ((campaignEx == null || !campaignEx.isDynamicView()) && this.f7552f && this.aa) {
            h();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            if (this.aL != null) {
                getHandler().removeCallbacks(this.aL);
            }
            if (this.aD != 0) {
                removeCallbacks(this.aM);
            }
        } catch (Throwable th) {
            aa.d(MBridgeBaseView.TAG, th.getMessage());
        }
    }

    public void preLoadData(com.mbridge.msdk.video.signal.factory.b bVar) {
        this.I = bVar;
        if (!this.f7552f) {
            com.mbridge.msdk.video.module.a.a aVar = this.f7551e;
            if (aVar != null) {
                aVar.a(12, "MBridgeVideoView initSuccess false");
            }
        } else if (!TextUtils.isEmpty(this.O) && this.b != null) {
            AdSession adSession = this.an;
            if (adSession != null) {
                adSession.registerAdView(this.s);
                SoundImageView soundImageView = this.t;
                if (soundImageView != null) {
                    this.an.addFriendlyObstruction(soundImageView, FriendlyObstructionPurpose.OTHER, null);
                }
                this.an.addFriendlyObstruction(this.u, FriendlyObstructionPurpose.OTHER, null);
                this.an.addFriendlyObstruction(this.v, FriendlyObstructionPurpose.VIDEO_CONTROLS, null);
            }
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && ak.b(campaignEx.getVideoResolution())) {
                String videoResolution = this.b.getVideoResolution();
                aa.b(MBridgeBaseView.TAG, "MBridgeBaseView videoResolution:" + videoResolution);
                String[] strArrSplit = videoResolution.split("x");
                if (strArrSplit.length == 2) {
                    if (af.c(strArrSplit[0]) > 0.0d) {
                        this.V = af.c(strArrSplit[0]);
                    }
                    if (af.c(strArrSplit[1]) > 0.0d) {
                        this.W = af.c(strArrSplit[1]);
                    }
                    aa.b(MBridgeBaseView.TAG, "MBridgeBaseView mVideoW:" + this.V + "  mVideoH:" + this.W);
                }
                if (this.V <= 0.0d) {
                    this.V = 1280.0d;
                }
                if (this.W <= 0.0d) {
                    this.W = 720.0d;
                }
            }
            this.s.initBufferIngParam(this.Q);
            this.s.initVFPData(this.O, this.b.getVideoUrlEncode(), this.aJ);
            soundOperate(this.am, -1, null);
        }
        al = false;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void progressBarOperate(int i) {
        ProgressBar progressBar;
        if (this.f7552f) {
            if (i == 1) {
                ProgressBar progressBar2 = this.y;
                if (progressBar2 != null) {
                    progressBar2.setVisibility(8);
                    return;
                }
                return;
            }
            if (i != 2 || (progressBar = this.y) == null) {
                return;
            }
            progressBar.setVisibility(0);
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void progressOperate(int i, int i2) {
        if (this.f7552f) {
            aa.b(MBridgeBaseView.TAG, "progressOperate progress:" + i);
            CampaignEx campaignEx = this.b;
            int videoLength = campaignEx != null ? campaignEx.getVideoLength() : 0;
            if (i > 0 && i <= videoLength && this.s != null) {
                aa.b(MBridgeBaseView.TAG, "progressOperate progress:" + i);
                this.s.seekTo(i * 1000);
            }
            if (i2 == 1) {
                this.u.setVisibility(8);
            } else if (i2 == 2) {
                this.u.setVisibility(0);
            }
            if (this.u.getVisibility() == 0) {
                j();
            }
        }
    }

    public void releasePlayer() {
        try {
            PlayerView playerView = this.s;
            if (playerView != null && !this.ac) {
                playerView.release();
                m.a().a("2000146", this.b, new HashMap());
            }
            b bVar = this.aJ;
            if (bVar != null) {
                bVar.c();
            }
            if (this.C != null) {
                this.C = null;
            }
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void setAdSession(AdSession adSession) {
        this.an = adSession;
    }

    public void setBufferTimeout(int i) {
        this.Q = i;
    }

    public void setCTALayoutVisibleOrGone() {
        FrameLayout frameLayout;
        CampaignEx campaignEx = this.b;
        if (campaignEx != null && campaignEx.isDynamicView() && (frameLayout = this.G) != null && this.J >= -1) {
            MBridgeClickCTAView mBridgeClickCTAView = this.H;
            if (mBridgeClickCTAView == null && frameLayout != null) {
                if (mBridgeClickCTAView == null) {
                    MBridgeClickCTAView mBridgeClickCTAView2 = new MBridgeClickCTAView(getContext());
                    this.H = mBridgeClickCTAView2;
                    mBridgeClickCTAView2.setCampaign(this.b);
                    this.H.setUnitId(this.U);
                    com.mbridge.msdk.video.module.a.a aVar = this.C;
                    if (aVar != null) {
                        this.H.setNotifyListener(new com.mbridge.msdk.video.module.a.a.i(aVar));
                    }
                    this.H.preLoadData(this.I);
                }
                this.G.addView(this.H);
            }
            int i = this.J;
            if (i >= 0) {
                this.G.setVisibility(0);
                return;
            }
            if (i == -1) {
                if (this.G.getVisibility() != 0) {
                    this.G.setVisibility(0);
                    postDelayed(this.aL, 3000L);
                } else {
                    this.G.setVisibility(8);
                    getHandler().removeCallbacks(this.aL);
                }
            }
        }
    }

    public void setCamPlayOrderCallback(com.mbridge.msdk.video.dynview.e.a aVar, List<CampaignEx> list, int i, int i2) {
        MBridgeSegmentsProgressBar mBridgeSegmentsProgressBar;
        this.D = aVar;
        this.mCampaignSize = list.size();
        this.mCurrPlayNum = i;
        this.E = i2;
        this.mCampOrderViewData = list;
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || campaignEx.getDynamicTempCode() != 5 || (mBridgeSegmentsProgressBar = this.B) == null || this.mCampOrderViewData == null) {
            return;
        }
        if (this.mCampaignSize <= 1) {
            mBridgeSegmentsProgressBar.setVisibility(8);
            return;
        }
        mBridgeSegmentsProgressBar.setVisibility(0);
        this.B.init(this.mCampaignSize, 2);
        for (int i3 = 0; i3 < this.mCampOrderViewData.size(); i3++) {
            int videoPlayProgress = this.mCampOrderViewData.get(i3).getVideoPlayProgress();
            if (videoPlayProgress > 0) {
                this.B.setProgress(videoPlayProgress, i3);
            }
            if (this.mCampOrderViewData.get(i3).isRewardPopViewShowed) {
                this.L = true;
            }
        }
    }

    @Override // com.mbridge.msdk.video.module.MBridgeBaseView
    public void setCampaign(CampaignEx campaignEx) {
        super.setCampaign(campaignEx);
        b bVar = this.aJ;
        if (bVar != null) {
            bVar.a(campaignEx);
            b bVar2 = this.aJ;
            int iR = (campaignEx == null || campaignEx.getReady_rate() == -1) ? com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.U, false).r() : campaignEx.getReady_rate();
            bVar2.a(iR, com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.U, false).s());
        }
    }

    public void setCloseAlert(int i) {
        this.R = i;
    }

    public void setContainerViewOnNotifyListener(com.mbridge.msdk.video.module.a.a aVar) {
        this.C = aVar;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void setCover(boolean z) {
        if (this.f7552f) {
            this.s.setIsCovered(z);
        }
    }

    public void setDialogRole(int i) {
        this.aw = i == 1;
        aa.d(MBridgeBaseView.TAG, i + " " + this.aw);
    }

    public void setIVRewardEnable(int i, int i2, int i3) {
        this.aq = i;
        this.ar = i2;
        this.as = i3;
    }

    public void setIsIV(boolean z) {
        this.ak = z;
        b bVar = this.aJ;
        if (bVar != null) {
            bVar.a(z);
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void setMiniEndCardState(boolean z) {
        this.ad = z;
    }

    public void setNotchPadding(final int i, final int i2, final int i3, final int i4) {
        RelativeLayout relativeLayout;
        try {
            aa.d(MBridgeBaseView.TAG, "NOTCH VideoView " + String.format("%1s-%2s-%3s-%4s", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)));
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
            if (!(Math.max(Math.max(layoutParams.leftMargin, layoutParams.rightMargin), Math.max(layoutParams.topMargin, layoutParams.bottomMargin)) > Math.max(Math.max(i, i2), Math.max(i3, i4))) && (relativeLayout = this.w) != null) {
                relativeLayout.postDelayed(new Runnable() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.14
                    @Override // java.lang.Runnable
                    public final void run() {
                        if (MBridgeVideoView.this.w == null) {
                            return;
                        }
                        MBridgeVideoView.this.w.setVisibility(0);
                        CampaignEx campaignEx = MBridgeVideoView.this.b;
                        if (campaignEx == null || campaignEx.getAdSpaceT() == 2) {
                            return;
                        }
                        MBridgeVideoView.this.w.setPadding(i, i3, i2, i4);
                        MBridgeVideoView.this.w.startAnimation(MBridgeVideoView.this.aB);
                    }
                }, 200L);
            }
            if (this.u.getVisibility() == 0) {
                j();
            }
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void setPlayURL(String str) {
        this.O = str;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void setScaleFitXY(int i) {
        this.aj = i;
    }

    public void setShowingAlertViewCover(boolean z) {
        MBAcquireRewardPopView mBAcquireRewardPopView;
        if (z && (mBAcquireRewardPopView = this.aI) != null && this.N && this.M) {
            mBAcquireRewardPopView.onPause();
        }
        this.s.setIsCovered(z);
    }

    public void setShowingTransparent(boolean z) {
        this.ai = z;
    }

    public void setSoundState(int i) {
        this.am = i;
    }

    public void setUnitId(String str) {
        this.U = str;
        b bVar = this.aJ;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    public void setVideoEvents(MediaEvents mediaEvents) {
        this.ao = mediaEvents;
        b bVar = this.aJ;
        if (bVar != null) {
            bVar.f7558f = mediaEvents;
        }
    }

    public void setVideoLayout(CampaignEx campaignEx) {
        if (campaignEx != null) {
            this.b = campaignEx;
            this.i = campaignEx.isDynamicView();
        }
        if (this.i) {
            final com.mbridge.msdk.video.dynview.c cVarA = new com.mbridge.msdk.video.dynview.j.c().a(this, campaignEx);
            com.mbridge.msdk.video.dynview.b.a().a(cVarA, new g() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.1
                @Override // com.mbridge.msdk.video.dynview.e.g
                public final void a(com.mbridge.msdk.video.dynview.a aVar) {
                    if (aVar != null) {
                        if (this != null && aVar.a() != null) {
                            aVar.a().setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                            this.addView(aVar.a());
                        }
                        if (aVar.b() != null) {
                            Iterator<View> it = aVar.b().iterator();
                            while (it.hasNext()) {
                                it.next().setOnClickListener(new com.mbridge.msdk.widget.a() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.1.1
                                    @Override // com.mbridge.msdk.widget.a
                                    protected final void a(View view) {
                                        MBridgeVideoView.a(MBridgeVideoView.this, "video_play_click");
                                    }
                                });
                            }
                        }
                        MBridgeVideoView.this.aA = aVar.c();
                        MBridgeVideoView.this.a();
                        boolean unused = MBridgeVideoView.al = false;
                        MBridgeVideoView.this.J = cVarA.j();
                    }
                }

                @Override // com.mbridge.msdk.video.dynview.e.g
                public final void a(com.mbridge.msdk.video.dynview.c.a aVar) {
                    aa.d(MBridgeBaseView.TAG, "errorMsg：" + aVar.b());
                }
            });
            return;
        }
        int iFindLayout = findLayout("mbridge_reward_videoview_item");
        if (iFindLayout > 0) {
            this.c.inflate(iFindLayout, this);
            a();
        }
        al = false;
    }

    public void setVideoSkipTime(int i) {
        this.P = i;
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void setVisible(int i) {
        setVisibility(i);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void showAlertView() {
        if (this.ad) {
            return;
        }
        if (this.T == null) {
            this.T = new com.mbridge.msdk.widget.dialog.a() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.11
                @Override // com.mbridge.msdk.widget.dialog.a
                public final void a() {
                }

                @Override // com.mbridge.msdk.widget.dialog.a
                public final void b() {
                    MBridgeVideoView.this.M = false;
                    MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                    mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.M);
                    if (MBridgeVideoView.this.ak && (MBridgeVideoView.this.aq == com.mbridge.msdk.foundation.same.a.p || MBridgeVideoView.this.aq == com.mbridge.msdk.foundation.same.a.o)) {
                        MBridgeVideoView.this.au = true;
                        com.mbridge.msdk.video.module.a.a aVar = MBridgeVideoView.this.f7551e;
                        if (aVar != null) {
                            aVar.a(124, "");
                        }
                        MBridgeVideoView.this.ay = true;
                        MBridgeVideoView.this.gonePlayingCloseView();
                    }
                    MBridgeVideoView.this.g();
                    MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                    q.a(mBridgeVideoView2.a, mBridgeVideoView2.b, mBridgeVideoView2.ap, MBridgeVideoView.this.U, 1, 0);
                }

                @Override // com.mbridge.msdk.widget.dialog.a
                public final void c() {
                    MBridgeVideoView.this.M = false;
                    MBridgeVideoView.this.av = true;
                    MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                    mBridgeVideoView.setShowingAlertViewCover(mBridgeVideoView.M);
                    MBridgeVideoView mBridgeVideoView2 = MBridgeVideoView.this;
                    q.a(mBridgeVideoView2.a, mBridgeVideoView2.b, mBridgeVideoView2.ap, MBridgeVideoView.this.U, 1, 1);
                    if (MBridgeVideoView.this.ak && MBridgeVideoView.this.aq == com.mbridge.msdk.foundation.same.a.o) {
                        MBridgeVideoView mBridgeVideoView3 = MBridgeVideoView.this;
                        com.mbridge.msdk.video.module.a.a aVar = mBridgeVideoView3.f7551e;
                        if (aVar != null) {
                            aVar.a(2, mBridgeVideoView3.b(mBridgeVideoView3.ax));
                            return;
                        }
                        return;
                    }
                    if (MBridgeVideoView.this.ak && MBridgeVideoView.this.aq == com.mbridge.msdk.foundation.same.a.p) {
                        MBridgeVideoView.this.g();
                        return;
                    }
                    com.mbridge.msdk.video.module.a.a aVar2 = MBridgeVideoView.this.f7551e;
                    if (aVar2 != null) {
                        aVar2.a(2, "");
                    }
                }
            };
        }
        if (this.S == null) {
            MBAlertDialog mBAlertDialog = new MBAlertDialog(getContext(), this.T);
            this.S = mBAlertDialog;
            AdSession adSession = this.an;
            if (adSession != null) {
                adSession.addFriendlyObstruction(mBAlertDialog.getWindow().getDecorView(), FriendlyObstructionPurpose.NOT_VISIBLE, null);
            }
        }
        if (this.ak) {
            this.S.makeIVAlertView(this.aq, this.U);
        } else {
            this.S.makeRVAlertView(this.U);
        }
        PlayerView playerView = this.s;
        if (playerView == null || playerView.isComplete()) {
            return;
        }
        this.S.show();
        this.at = true;
        this.M = true;
        setShowingAlertViewCover(true);
        com.mbridge.msdk.videocommon.d.b.a().a(com.mbridge.msdk.foundation.controller.b.d().h(), this.U, false);
        String str = com.mbridge.msdk.videocommon.d.c.a;
        this.ap = str;
        q.a(this.a, this.b, str, this.U, 1);
    }

    public void showBaitClickView() {
        int i;
        MBridgeBaitClickView mBridgeBaitClickView;
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || !campaignEx.isDynamicView() || this.b.getRewardTemplateMode() == null) {
            return;
        }
        String strE = this.b.getRewardTemplateMode().e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = al.a(strE, "bait_click");
            if (TextUtils.isEmpty(strA) || (i = Integer.parseInt(strA)) == 0 || (mBridgeBaitClickView = this.aC) == null) {
                return;
            }
            mBridgeBaitClickView.setVisibility(0);
            this.aC.init(i);
            this.aC.startAnimation();
            this.aC.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.module.MBridgeVideoView.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    MBridgeVideoView mBridgeVideoView = MBridgeVideoView.this;
                    if (mBridgeVideoView.f7551e != null) {
                        MBridgeVideoView.a(mBridgeVideoView, "bait_click_clicked");
                    }
                }
            });
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void showIVRewardAlertView(String str) {
        this.f7551e.a(8, "");
    }

    public void showMoreOfferInPlayTemplate() {
        CampaignEx campaignEx = this.b;
        if (campaignEx == null || this.K == null || !campaignEx.isDynamicView() || this.b.getRewardTemplateMode() == null) {
            return;
        }
        String strE = this.b.getRewardTemplateMode().e();
        if (TextUtils.isEmpty(strE)) {
            return;
        }
        try {
            String strA = al.a(strE, "mof");
            if (TextUtils.isEmpty(strA) || Integer.parseInt(strA) != 1) {
                return;
            }
            com.mbridge.msdk.video.dynview.moffer.a.a().a(this.b, this, new com.mbridge.msdk.video.module.a.a.i(this.C), 1);
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    public void showRewardPopView() {
        AcquireRewardPopViewParameters acquireRewardPopViewParameters;
        MBAcquireRewardPopView mBAcquireRewardPopView = this.aI;
        if (mBAcquireRewardPopView == null || (acquireRewardPopViewParameters = this.aH) == null) {
            return;
        }
        try {
            mBAcquireRewardPopView.init(acquireRewardPopViewParameters);
            this.aI.setVisibility(0);
            setCover(true);
            f();
            this.N = true;
            CampaignEx campaignEx = this.b;
            if (campaignEx != null) {
                campaignEx.isRewardPopViewShowed = true;
            }
        } catch (Exception e2) {
            aa.d(MBridgeBaseView.TAG, e2.getMessage());
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void showVideoLocation(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        aa.b(MBridgeBaseView.TAG, "showVideoLocation marginTop:" + i + " marginLeft:" + i2 + " width:" + i3 + "  height:" + i4 + " radius:" + i5 + " borderTop:" + i6 + " borderLeft:" + i7 + " borderWidth:" + i8 + " borderHeight:" + i9);
        if (this.f7552f) {
            this.w.setPadding(0, 0, 0, 0);
            setVisibility(0);
            if (this.w.getVisibility() != 0) {
                this.w.setVisibility(0);
            }
            if (this.u.getVisibility() == 0) {
                j();
            }
            if (!(i3 > 0 && i4 > 0 && af.i(this.a) >= i3 && af.h(this.a) >= i4) || this.aa) {
                h();
                return;
            }
            o = i6;
            p = i7;
            q = i8 + 4;
            r = i9 + 4;
            float f2 = i3 / i4;
            float f3 = 0.0f;
            try {
                f3 = (float) (this.V / this.W);
            } catch (Throwable th) {
                aa.b(MBridgeBaseView.TAG, th.getMessage(), th);
            }
            if (i5 > 0) {
                n = i5;
                if (i5 > 0) {
                    GradientDrawable gradientDrawable = new GradientDrawable();
                    gradientDrawable.setCornerRadius(af.b(getContext(), i5));
                    gradientDrawable.setColor(-1);
                    gradientDrawable.setStroke(1, 0);
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 16) {
                        setBackground(gradientDrawable);
                        this.s.setBackground(gradientDrawable);
                    } else {
                        setBackgroundDrawable(gradientDrawable);
                        this.s.setBackgroundDrawable(gradientDrawable);
                    }
                    if (i10 >= 21) {
                        setClipToOutline(true);
                        this.s.setClipToOutline(true);
                    }
                }
            }
            if (Math.abs(f2 - f3) > 0.1f && this.aj != 1) {
                h();
                videoOperate(1);
                return;
            }
            h();
            if (!this.ai) {
                setLayoutParam(i2, i, i3, i4);
                return;
            }
            setLayoutCenter(i3, i4);
            if (al) {
                this.f7551e.a(114, "");
            } else {
                this.f7551e.a(116, "");
            }
        }
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void soundOperate(int i, int i2) {
        soundOperate(i, i2, MBridgeConstans.API_REUQEST_CATEGORY_APP);
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void soundOperate(int i, int i2, String str) {
        com.mbridge.msdk.video.module.a.a aVar;
        SoundImageView soundImageView;
        if (this.f7552f) {
            this.am = i;
            if (i == 1) {
                SoundImageView soundImageView2 = this.t;
                if (soundImageView2 != null) {
                    soundImageView2.setSoundStatus(false);
                }
                this.s.closeSound();
                try {
                    MediaEvents mediaEvents = this.ao;
                    if (mediaEvents != null) {
                        mediaEvents.volumeChange(0.0f);
                    }
                } catch (IllegalArgumentException e2) {
                    aa.a("OMSDK", e2.getMessage());
                }
            } else if (i == 2) {
                SoundImageView soundImageView3 = this.t;
                if (soundImageView3 != null) {
                    soundImageView3.setSoundStatus(true);
                }
                this.s.openSound();
                try {
                    MediaEvents mediaEvents2 = this.ao;
                    if (mediaEvents2 != null) {
                        mediaEvents2.volumeChange(1.0f);
                    }
                } catch (IllegalArgumentException e3) {
                    aa.a("OMSDK", e3.getMessage());
                }
            }
            CampaignEx campaignEx = this.b;
            if (campaignEx != null && campaignEx.isDynamicView()) {
                SoundImageView soundImageView4 = this.t;
                if (soundImageView4 != null) {
                    soundImageView4.setVisibility(0);
                }
            } else if (i2 == 1) {
                SoundImageView soundImageView5 = this.t;
                if (soundImageView5 != null) {
                    soundImageView5.setVisibility(8);
                }
            } else if (i2 == 2 && (soundImageView = this.t) != null) {
                soundImageView.setVisibility(0);
            }
        }
        if (str == null || !str.equals(MBridgeConstans.API_REUQEST_CATEGORY_APP) || (aVar = this.f7551e) == null) {
            return;
        }
        aVar.a(7, Integer.valueOf(i));
    }

    @Override // com.mbridge.msdk.video.signal.i
    public void videoOperate(int i) {
        aa.a(MBridgeBaseView.TAG, "VideoView videoOperate:" + i);
        if (this.f7552f) {
            if (i == 1) {
                if (getVisibility() == 0 && isfront()) {
                    aa.a(MBridgeBaseView.TAG, "VideoView videoOperate:play");
                    if (this.M || com.mbridge.msdk.foundation.c.b.c) {
                        return;
                    }
                    g();
                    return;
                }
                return;
            }
            if (i == 2) {
                if (getVisibility() == 0 && isfront()) {
                    aa.a(MBridgeBaseView.TAG, "VideoView videoOperate:pause");
                    f();
                    return;
                }
                return;
            }
            if (i != 3 || this.ac) {
                return;
            }
            this.s.release();
            this.ac = true;
            m.a().a("2000146", this.b, new HashMap());
        }
    }
}
