package com.mbridge.msdk.video.dynview.ordercamp.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.mbridge.msdk.c.f;
import com.mbridge.msdk.dycreator.baseview.MBFrameLayout;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBRotationView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeImageView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBridgeTextView;
import com.mbridge.msdk.dycreator.wrapper.DyAdType;
import com.mbridge.msdk.dycreator.wrapper.DyOption;
import com.mbridge.msdk.dycreator.wrapper.DynamicViewCreator;
import com.mbridge.msdk.foundation.controller.b;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.same.c.c;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.k;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.foundation.tools.w;
import com.mbridge.msdk.foundation.tools.y;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import java.io.File;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: OrderCampAdapter.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a extends BaseAdapter {
    private boolean a = false;
    private C0433a b;
    private List<CampaignEx> c;

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.ordercamp.a.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OrderCampAdapter.java */
    static class C0433a {
        RelativeLayout a;
        MBRotationView b;
        MBridgeImageView c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        RoundImageView f7543d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        TextView f7544e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        TextView f7545f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        TextView f7546g;
        TextView h;
        MBridgeLevelLayoutView i;
        ImageView j;
        ImageView k;
        MBCusRoundImageView l;
        MBCusRoundImageView m;
        MBStarLevelLayoutView n;
        MBHeatLevelLayoutView o;
        MBFrameLayout p;

        C0433a() {
        }
    }

    public a(List<CampaignEx> list) {
        this.c = list;
    }

    private int a(String str) {
        return t.a(b.d().g().getApplicationContext(), str, TtmlNode.TAG_LAYOUT);
    }

    private View a() {
        View viewInflate = LayoutInflater.from(b.d().g()).inflate(a("mbridge_order_layout_item"), (ViewGroup) null);
        C0433a c0433a = new C0433a();
        this.b = c0433a;
        c0433a.c = (MBridgeImageView) viewInflate.findViewById(b("mbridge_lv_iv"));
        this.b.k = (ImageView) viewInflate.findViewById(b("mbridge_lv_iv_burl"));
        this.b.f7543d = (RoundImageView) viewInflate.findViewById(b("mbridge_lv_icon_iv"));
        this.b.i = (MBridgeLevelLayoutView) viewInflate.findViewById(b("mbridge_lv_sv_starlevel"));
        this.b.b = (MBRotationView) viewInflate.findViewById(b("mbridge_lv_ration"));
        viewInflate.setTag(this.b);
        return viewInflate;
    }

    private View a(int i) {
        View viewCreateDynamicView;
        String cMPTEntryUrl;
        String str;
        try {
            List<CampaignEx> list = this.c;
            cMPTEntryUrl = "";
            if (list == null || list.get(i) == null) {
                str = "501";
            } else {
                str = this.c.get(i).getMof_tplid() + "";
                cMPTEntryUrl = this.c.get(i).getCMPTEntryUrl();
            }
        } catch (Exception e2) {
            aa.d("OrderCampAdapter", e2.getMessage());
            viewCreateDynamicView = null;
        }
        if (TextUtils.isEmpty(cMPTEntryUrl)) {
            return a();
        }
        int iH = w.h(b.d().g());
        String strA = k.a(0, str, cMPTEntryUrl);
        if (TextUtils.isEmpty(strA)) {
            return a();
        }
        File file = new File(strA + File.separator + "template_config.json");
        if (file.isFile() && file.exists()) {
            List<String> listB = y.b(strA, "template_" + str + "_" + iH + "_item");
            if (listB == null) {
                return a();
            }
            int iH2 = w.h(b.d().g());
            f.a().b(b.d().h());
            viewCreateDynamicView = DynamicViewCreator.getInstance().createDynamicView(new DyOption.Builder().campaignEx(this.c.get(i)).fileDirs(listB).dyAdType(DyAdType.REWARD).orientation(iH2).adChoiceLink(af.c(this.c.get(i))).build());
            if (viewCreateDynamicView != null) {
                this.a = true;
                C0433a c0433a = new C0433a();
                this.b = c0433a;
                c0433a.l = (MBCusRoundImageView) viewCreateDynamicView.findViewById(c("mbridge_lv_iv"));
                this.b.k = (ImageView) viewCreateDynamicView.findViewById(c("mbridge_lv_iv_burl"));
                this.b.m = (MBCusRoundImageView) viewCreateDynamicView.findViewById(c("mbridge_lv_icon_iv"));
                this.b.n = (MBStarLevelLayoutView) viewCreateDynamicView.findViewById(c("mbridge_lv_sv_starlevel"));
                this.b.p = (MBFrameLayout) viewCreateDynamicView.findViewById(c("mbridge_lv_ration"));
                viewCreateDynamicView.setTag(this.b);
            }
            return this.a ? viewCreateDynamicView : a();
        }
        return a();
    }

    private void a(final ImageView imageView, String str, final boolean z) {
        if (imageView == null) {
            return;
        }
        if (!TextUtils.isEmpty(str)) {
            com.mbridge.msdk.foundation.same.c.b.a(imageView.getContext()).a(str, new c() { // from class: com.mbridge.msdk.video.dynview.ordercamp.a.a.1
                @Override // com.mbridge.msdk.foundation.same.c.c
                public final void onFailedLoad(String str2, String str3) {
                    if (z) {
                        imageView.setVisibility(8);
                    }
                }

                @Override // com.mbridge.msdk.foundation.same.c.c
                public final void onSuccessLoad(Bitmap bitmap, String str2) {
                    try {
                        if (bitmap.isRecycled()) {
                            return;
                        }
                        imageView.setImageBitmap(bitmap);
                    } catch (Throwable th) {
                        aa.d("OrderCampAdapter", th.getMessage());
                    }
                }
            });
        } else if (z) {
            imageView.setVisibility(8);
        }
    }

    private int b(String str) {
        return t.a(b.d().g().getApplicationContext(), str, "id");
    }

    private int c(String str) {
        if (TextUtils.isEmpty(str)) {
            return -1;
        }
        return str.hashCode();
    }

    private int d(String str) {
        return this.a ? c(str) : b(str);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        List<CampaignEx> list = this.c;
        if (list == null || list.size() <= 0) {
            return 0;
        }
        return this.c.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        List<CampaignEx> list = this.c;
        if (list != null) {
            return list.get(i);
        }
        return null;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View viewA;
        try {
            if (view == null) {
                viewA = a(i);
            } else {
                this.b = (C0433a) view.getTag();
                viewA = view;
            }
            try {
                this.b.a = (RelativeLayout) viewA.findViewById(d("mbridge_lv_item_rl"));
                this.b.f7544e = (TextView) viewA.findViewById(d("mbridge_lv_title_tv"));
                this.b.f7546g = (TextView) viewA.findViewById(d("mbridge_lv_tv_install"));
                this.b.o = (MBHeatLevelLayoutView) viewA.findViewById(d("mbridge_lv_sv_heat_level"));
                this.b.f7545f = (TextView) viewA.findViewById(d("mbridge_lv_desc_tv"));
                this.b.j = (ImageView) viewA.findViewById(d("mbridge_iv_flag"));
                this.b.h = (TextView) viewA.findViewById(d("mbridge_order_viewed_tv"));
                double d2 = 5.0d;
                if (this.a) {
                    List<CampaignEx> list = this.c;
                    if (list != null && this.b != null && list.size() != 0) {
                        MBCusRoundImageView mBCusRoundImageView = this.b.l;
                        if (mBCusRoundImageView != null && (mBCusRoundImageView instanceof MBCusRoundImageView)) {
                            mBCusRoundImageView.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
                            a(this.b.l, this.c.get(i).getImageUrl(), false);
                        }
                        ImageView imageView = this.b.k;
                        if (imageView != null) {
                            a(imageView, this.c.get(i).getImageUrl(), false);
                        }
                        MBCusRoundImageView mBCusRoundImageView2 = this.b.m;
                        if (mBCusRoundImageView2 != null && (mBCusRoundImageView2 instanceof MBCusRoundImageView)) {
                            mBCusRoundImageView2.setBorder(50, 20, -1);
                            a(this.b.m, this.c.get(i).getIconUrl(), true);
                        }
                        double rating = this.c.get(i).getRating();
                        if (rating > 0.0d) {
                            d2 = rating;
                        }
                        MBStarLevelLayoutView mBStarLevelLayoutView = this.b.n;
                        if (mBStarLevelLayoutView != null) {
                            mBStarLevelLayoutView.setRating((int) d2);
                            this.b.n.setOrientation(0);
                        }
                        MBHeatLevelLayoutView mBHeatLevelLayoutView = this.b.o;
                        if (mBHeatLevelLayoutView != null) {
                            mBHeatLevelLayoutView.setHeatCount(this.c.get(i).getNumberRating());
                        }
                    }
                } else {
                    List<CampaignEx> list2 = this.c;
                    if (list2 != null && this.b != null && list2.size() != 0) {
                        MBridgeImageView mBridgeImageView = this.b.c;
                        if (mBridgeImageView != null) {
                            a(mBridgeImageView, this.c.get(i).getImageUrl(), false);
                        }
                        ImageView imageView2 = this.b.k;
                        if (imageView2 != null) {
                            a(imageView2, this.c.get(i).getImageUrl(), false);
                        }
                        RoundImageView roundImageView = this.b.f7543d;
                        if (roundImageView != null) {
                            roundImageView.setBorderRadius(25);
                            a(this.b.f7543d, this.c.get(i).getIconUrl(), true);
                        }
                        double rating2 = this.c.get(i).getRating();
                        if (rating2 > 0.0d) {
                            d2 = rating2;
                        }
                        MBridgeLevelLayoutView mBridgeLevelLayoutView = this.b.i;
                        if (mBridgeLevelLayoutView != null) {
                            mBridgeLevelLayoutView.setRatingAndUser(d2, this.c.get(i).getNumberRating());
                            this.b.i.setOrientation(0);
                        }
                        MBRotationView mBRotationView = this.b.b;
                        if (mBRotationView != null) {
                            mBRotationView.setWidthRatio(1.0f);
                            this.b.b.setHeightRatio(1.0f);
                            this.b.b.setAutoscroll(false);
                        }
                        MBridgeImageView mBridgeImageView2 = this.b.c;
                        if (mBridgeImageView2 != null) {
                            mBridgeImageView2.setCustomBorder(30, 30, 30, 30, 10, -1728053248);
                        }
                    }
                }
                C0433a c0433a = this.b;
                if (c0433a != null) {
                    if (c0433a.f7544e != null) {
                        this.b.f7544e.setText(this.c.get(i).getAppName());
                    }
                    if (this.b.f7545f != null) {
                        this.b.f7545f.setText(this.c.get(i).getAppDesc());
                    }
                    if (this.b.f7546g != null) {
                        String adCall = this.c.get(i).getAdCall();
                        if (this.b.f7546g instanceof MBridgeTextView) {
                            ((MBridgeTextView) this.b.f7546g).setObjectAnimator(new com.mbridge.msdk.video.dynview.h.b().c(this.b.f7546g));
                        }
                        this.b.f7546g.setText(adCall);
                    }
                    if (this.b.j != null) {
                        try {
                            String language = Locale.getDefault().getLanguage();
                            Context contextG = b.d().g();
                            if (contextG != null) {
                                if (TextUtils.isEmpty(language) || !language.equals("zh")) {
                                    this.b.j.setImageDrawable(contextG.getResources().getDrawable(contextG.getResources().getIdentifier("mbridge_reward_flag_en", "drawable", b.d().b())));
                                } else {
                                    this.b.j.setImageDrawable(contextG.getResources().getDrawable(contextG.getResources().getIdentifier("mbridge_reward_flag_cn", "drawable", b.d().b())));
                                }
                            }
                        } catch (Exception e2) {
                            aa.d("OrderCampAdapter", e2.getMessage());
                        }
                        af.a(2, this.b.j, this.c.get(i), b.d().g(), false, null);
                    }
                    if (this.b.h != null) {
                        try {
                            this.b.h.setText(b.d().g().getResources().getString(b.d().g().getResources().getIdentifier("mbridge_reward_viewed_text_str", TypedValues.Custom.S_STRING, b.d().b())));
                            this.b.h.setVisibility(0);
                        } catch (Exception e3) {
                            aa.d("OrderCampAdapter", e3.getMessage());
                        }
                    }
                }
            } catch (Exception e4) {
                e = e4;
                aa.d("OrderCampAdapter", e.getMessage());
            }
        } catch (Exception e5) {
            e = e5;
            viewA = view;
        }
        return viewA;
    }
}
