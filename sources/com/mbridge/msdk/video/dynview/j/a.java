package com.mbridge.msdk.video.dynview.j;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.json.o2;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.dycreator.baseview.MBHeatLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.MBStarLevelLayoutView;
import com.mbridge.msdk.dycreator.baseview.cusview.MBCusRoundImageView;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.aa;
import com.mbridge.msdk.foundation.tools.af;
import com.mbridge.msdk.foundation.tools.l;
import com.mbridge.msdk.foundation.tools.t;
import com.mbridge.msdk.video.dynview.e.d;
import com.mbridge.msdk.video.dynview.e.e;
import com.mbridge.msdk.video.dynview.g.a;
import com.mbridge.msdk.video.dynview.widget.MBridgeLevelLayoutView;
import com.mbridge.msdk.videocommon.view.RoundImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: DataEnergizeWrapper.java */
/* JADX INFO: loaded from: classes4.dex */
public final class a {
    private static boolean j;
    private com.mbridge.msdk.video.dynview.i.c.b b;
    private Map<String, Bitmap> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile boolean f7531d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f7532e = "#FFFFFFFF";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f7533f = "#60000000";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f7534g = "#FF5F5F5F";
    private String h = "#90ECECEC";
    private volatile long i = 0;
    private com.mbridge.msdk.video.dynview.i.c.a k = null;
    private boolean l = false;
    private int m = 0;
    public com.mbridge.msdk.video.dynview.d.a a = new com.mbridge.msdk.video.dynview.d.a() { // from class: com.mbridge.msdk.video.dynview.j.a.1
        @Override // com.mbridge.msdk.video.dynview.d.a
        public final void a() {
            if (!a.this.l || a.this.b == null) {
                return;
            }
            a.this.b.a(a.this.m * 1000, a.this.k);
            a.this.l = false;
        }

        @Override // com.mbridge.msdk.video.dynview.d.a
        public final void b() {
            if (a.this.b != null) {
                a.this.b.b();
                a.this.l = true;
            }
        }

        @Override // com.mbridge.msdk.video.dynview.d.a
        public final void c() {
            if (a.this.b != null) {
                a.this.b.b();
                a.this.l = true;
            }
        }
    };

    /* JADX INFO: renamed from: com.mbridge.msdk.video.dynview.j.a$9, reason: invalid class name */
    /* JADX INFO: compiled from: DataEnergizeWrapper.java */
    final class AnonymousClass9 implements com.mbridge.msdk.foundation.same.c.c {
        final /* synthetic */ int a;
        final /* synthetic */ ImageView b;

        AnonymousClass9(int i, ImageView imageView) {
            this.a = i;
            this.b = imageView;
        }

        @Override // com.mbridge.msdk.foundation.same.c.c
        public final void onFailedLoad(String str, String str2) {
            try {
                int iA = t.a(this.b.getContext(), "mbridge_icon_play_bg", "drawable");
                this.b.setBackgroundColor(Color.parseColor(a.this.f7534g));
                this.b.setImageResource(iA);
                this.b.setScaleType(ImageView.ScaleType.CENTER);
            } catch (Exception e2) {
                aa.a("DataEnergizeWrapper", e2.getMessage());
            }
        }

        @Override // com.mbridge.msdk.foundation.same.c.c
        public final void onSuccessLoad(final Bitmap bitmap, String str) {
            if (bitmap == null || bitmap.isRecycled()) {
                int iA = t.a(this.b.getContext(), "mbridge_icon_play_bg", "drawable");
                this.b.setBackgroundColor(Color.parseColor(a.this.f7534g));
                this.b.setImageResource(iA);
                this.b.setScaleType(ImageView.ScaleType.CENTER);
                return;
            }
            int i = this.a;
            if (i != 501 && i != 802) {
                this.b.setImageBitmap(bitmap);
            } else {
                com.mbridge.msdk.foundation.same.f.b.d().execute(new Runnable() { // from class: com.mbridge.msdk.video.dynview.j.a.9.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            final Bitmap bitmapA = l.a(bitmap, 10);
                            AnonymousClass9.this.b.post(new Runnable() { // from class: com.mbridge.msdk.video.dynview.j.a.9.1.1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    AnonymousClass9.this.b.setImageBitmap(bitmapA);
                                }
                            });
                        } catch (Exception e2) {
                            aa.d("DataEnergizeWrapper", e2.getMessage());
                        }
                    }
                });
            }
        }
    }

    private int a(boolean z, String str) {
        try {
            if (!z) {
                return t.a(com.mbridge.msdk.foundation.controller.b.d().g(), str, "id");
            }
            if (TextUtils.isEmpty(str)) {
                return -1;
            }
            return str.hashCode();
        } catch (Exception e2) {
            aa.d("DataEnergizeWrapper", e2.getMessage());
            return -1;
        }
    }

    private Bitmap a() {
        Bitmap bitmapCreateBitmap = null;
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_4444);
            bitmapCreateBitmap.eraseColor(Color.parseColor(this.h));
            return bitmapCreateBitmap;
        } catch (Exception e2) {
            if (!MBridgeConstans.DEBUG) {
                return bitmapCreateBitmap;
            }
            e2.printStackTrace();
            return bitmapCreateBitmap;
        }
    }

    private void a(ImageView imageView, String str, int i) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        com.mbridge.msdk.foundation.same.c.b.a(imageView.getContext()).a(str, new AnonymousClass9(i, imageView));
    }

    private void a(com.mbridge.msdk.video.dynview.c cVar, View view) {
        a.C0430a c0430aA = com.mbridge.msdk.video.dynview.g.a.a();
        c0430aA.a(cVar.e()).a(true);
        if (cVar.e() != 2 || cVar.d() > cVar.c()) {
            c0430aA.a(cVar.d()).b(cVar.c());
        } else {
            c0430aA.a(cVar.c()).b(cVar.d());
        }
        if (view.getBackground() == null) {
            view.setBackground(c0430aA.a());
        }
    }

    static /* synthetic */ void a(a aVar, com.mbridge.msdk.video.dynview.c cVar, View view) {
        Map<String, Bitmap> map = aVar.c;
        if (map == null || map.size() <= 1) {
            return;
        }
        new com.mbridge.msdk.video.dynview.h.b();
        Map<String, Bitmap> map2 = aVar.c;
        if (view != null) {
            com.mbridge.msdk.video.dynview.i.a.a.a().a(map2, cVar, view);
        }
    }

    static /* synthetic */ void a(a aVar, Map map) {
        if (map != null) {
            try {
                if (map.containsKey("order_view_callback") && (map.get("order_view_callback") instanceof com.mbridge.msdk.video.dynview.e.c)) {
                    ((com.mbridge.msdk.video.dynview.e.c) map.get("order_view_callback")).a();
                    aVar.b();
                }
            } catch (Exception e2) {
                aa.d("DataEnergizeWrapper", e2.getMessage());
            }
        }
    }

    static /* synthetic */ void a(a aVar, Map map, List list, int i) {
        if (map == null || list == null || list.size() <= 1) {
            return;
        }
        if (!map.containsKey("choice_one_callback") || !(map.get("choice_one_callback") instanceof d)) {
            if (map.containsKey("order_view_callback") && (map.get("order_view_callback") instanceof com.mbridge.msdk.video.dynview.e.c)) {
                com.mbridge.msdk.video.dynview.e.c cVar = (com.mbridge.msdk.video.dynview.e.c) map.get("order_view_callback");
                if (cVar != null) {
                    cVar.a((CampaignEx) list.get(i), i);
                }
                aVar.b();
                return;
            }
            return;
        }
        d dVar = (d) map.get("choice_one_callback");
        if (dVar != null) {
            dVar.a((CampaignEx) list.get(i));
            try {
                CampaignEx campaignEx = (CampaignEx) list.get(i);
                HashMap map2 = new HashMap();
                map2.put(CampaignEx.JSON_NATIVE_VIDEO_CLICK, "0");
                map2.put("time", aVar.i + "");
                map2.put("choose_cid", campaignEx.getId());
                map2.put(o2.h.L, i + "");
                map2.put("type", "choseFromTwoSelect");
                com.mbridge.msdk.video.module.b.a.a("2000103", campaignEx, map2);
            } catch (Exception e2) {
                if (MBridgeConstans.DEBUG) {
                    e2.printStackTrace();
                }
            }
        }
        aVar.b();
    }

    private void a(String str, ImageView imageView) {
        if (TextUtils.isEmpty(str) || imageView == null) {
            return;
        }
        a(imageView, str, -1);
    }

    private void a(final String str, final ImageView imageView, final com.mbridge.msdk.video.dynview.c cVar, final View view) {
        com.mbridge.msdk.foundation.same.c.b.a(imageView.getContext()).a(str, new com.mbridge.msdk.foundation.same.c.c() { // from class: com.mbridge.msdk.video.dynview.j.a.10
            @Override // com.mbridge.msdk.foundation.same.c.c
            public final void onFailedLoad(String str2, String str3) {
            }

            @Override // com.mbridge.msdk.foundation.same.c.c
            public final void onSuccessLoad(Bitmap bitmap, String str2) {
                ImageView imageView2;
                if (bitmap == null || bitmap.isRecycled() || (imageView2 = imageView) == null) {
                    return;
                }
                imageView2.setImageBitmap(bitmap);
                if (a.this.c != null) {
                    a.this.c.put(SameMD5.getMD5(str), bitmap);
                    a.a(a.this, cVar, view);
                }
            }
        });
        try {
            Bitmap bitmapA = a();
            if (bitmapA == null || bitmapA.isRecycled()) {
                return;
            }
            a(cVar, view);
        } catch (Exception e2) {
            aa.d("DataEnergizeWrapper", e2.getMessage());
        }
    }

    private void b() {
        com.mbridge.msdk.video.dynview.i.a.a.a().b();
        com.mbridge.msdk.video.dynview.i.c.b bVar = this.b;
        if (bVar != null) {
            bVar.b();
            this.b = null;
        }
        com.mbridge.msdk.video.dynview.b.a.a().a = null;
        if (this.a != null) {
            this.a = null;
        }
        Map<String, Bitmap> map = this.c;
        if (map != null) {
            if (map.entrySet() != null) {
                try {
                    Iterator<Map.Entry<String, Bitmap>> it = this.c.entrySet().iterator();
                    while (it.hasNext()) {
                        Map.Entry<String, Bitmap> next = it.next();
                        if (next != null && next.getValue() != null && !next.getValue().isRecycled()) {
                            next.getValue().recycle();
                        }
                        it.remove();
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
            this.c.clear();
        }
    }

    static /* synthetic */ void b(a aVar, Map map) {
        if (map != null) {
            try {
                if (map.containsKey("choice_one_callback") && (map.get("choice_one_callback") instanceof d)) {
                    ((d) map.get("choice_one_callback")).a();
                    aVar.b();
                }
            } catch (Exception e2) {
                aa.d("DataEnergizeWrapper", e2.getMessage());
            }
        }
    }

    public final void a(com.mbridge.msdk.video.dynview.c cVar, View view, e eVar) {
        if (eVar == null) {
            return;
        }
        if (cVar == null) {
            eVar.a(com.mbridge.msdk.video.dynview.c.a.NOT_FOUND_VIEWOPTION);
            return;
        }
        try {
            ImageView imageView = (ImageView) view.findViewById(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_iv_adbanner_bg", "id"));
            if (imageView != null) {
                imageView.setBackgroundColor(Color.parseColor(this.h));
            }
            ImageView imageView2 = (ImageView) view.findViewById(t.a(com.mbridge.msdk.foundation.controller.b.d().g(), "mbridge_iv_adbanner", "id"));
            if (imageView2 != null) {
                imageView2.setBackgroundColor(Color.parseColor(this.h));
            }
            eVar.a(view, new ArrayList());
        } catch (Exception e2) {
            aa.a("DataEnergizeWrapper", e2.getMessage());
            eVar.a(com.mbridge.msdk.video.dynview.c.a.NOT_FOUND_VIEWOPTION);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x028f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void a(com.mbridge.msdk.video.dynview.c r32, android.view.View r33, final java.util.Map r34, com.mbridge.msdk.video.dynview.e.e r35) {
        /*
            Method dump skipped, instruction units count: 1000
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mbridge.msdk.video.dynview.j.a.a(com.mbridge.msdk.video.dynview.c, android.view.View, java.util.Map, com.mbridge.msdk.video.dynview.e.e):void");
    }

    public final void b(com.mbridge.msdk.video.dynview.c cVar, View view, Map map, e eVar) {
        if (eVar == null) {
            return;
        }
        if (cVar == null) {
            eVar.a(com.mbridge.msdk.video.dynview.c.a.NOT_FOUND_VIEWOPTION);
            return;
        }
        if (map != null && map.containsKey("is_dy_success")) {
            j = ((Boolean) map.get("is_dy_success")).booleanValue();
        }
        boolean z = j;
        LinearLayout linearLayout = z ? (LinearLayout) view.findViewById(a(z, "mbridge_reward_heat_mllv")) : null;
        ImageView imageView = (ImageView) view.findViewById(a(j, "mbridge_reward_icon_riv"));
        TextView textView = (TextView) view.findViewById(a(j, "mbridge_reward_title_tv"));
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(a(j, "mbridge_reward_stars_mllv"));
        TextView textView2 = (TextView) view.findViewById(a(j, "mbridge_reward_click_tv"));
        ImageView imageView2 = (ImageView) view.findViewById(a(j, "mbridge_videoview_bg"));
        TextView textView3 = (TextView) view.findViewById(a(j, "mbridge_reward_desc_tv"));
        List<View> arrayList = new ArrayList<>();
        List<CampaignEx> listG = cVar.g();
        if (listG == null || listG.size() <= 0) {
            eVar.a(com.mbridge.msdk.video.dynview.c.a.CAMPAIGNEX_IS_NULL);
            return;
        }
        CampaignEx campaignEx = listG.get(0);
        if (campaignEx == null) {
            eVar.a(com.mbridge.msdk.video.dynview.c.a.CAMPAIGNEX_IS_NULL);
            return;
        }
        if (imageView != null) {
            if (!j) {
                ((RoundImageView) imageView).setBorderRadius(10);
            } else if (imageView instanceof MBCusRoundImageView) {
                ((MBCusRoundImageView) imageView).setCustomBorder(30, 30, 30, 30, 10, -1);
            }
            a(campaignEx.getIconUrl(), imageView);
        }
        if (textView != null) {
            textView.setText(campaignEx.getAppName());
        }
        if (textView3 != null) {
            textView3.setText(campaignEx.getAppDesc());
        }
        if (linearLayout2 != null) {
            double rating = campaignEx.getRating();
            if (rating <= 0.0d) {
                rating = 5.0d;
            }
            if (j) {
                if (linearLayout2 instanceof MBStarLevelLayoutView) {
                    MBStarLevelLayoutView mBStarLevelLayoutView = (MBStarLevelLayoutView) linearLayout2;
                    mBStarLevelLayoutView.setRating((int) rating);
                    mBStarLevelLayoutView.setOrientation(0);
                }
                if (linearLayout != null && (linearLayout instanceof MBHeatLevelLayoutView)) {
                    ((MBHeatLevelLayoutView) linearLayout).setHeatCount(campaignEx.getNumberRating());
                }
            } else {
                ((MBridgeLevelLayoutView) linearLayout2).setRatingAndUser(rating, campaignEx.getNumberRating());
            }
        }
        if (textView2 != null) {
            textView2.setText(campaignEx.getAdCall());
        }
        int iH = cVar.h();
        if (iH == 102 || iH == 202 || iH == 302) {
            if (textView2 != null) {
                arrayList.add(textView2);
            }
        } else if (iH == 802) {
            if (imageView != null) {
                arrayList.add(imageView);
            }
            if (textView2 != null) {
                arrayList.add(textView2);
            }
            a(imageView2, campaignEx.getImageUrl(), iH);
        } else if (iH == 904 && cVar.k()) {
            arrayList.add(view);
        }
        eVar.a(view, arrayList);
    }

    public final void c(com.mbridge.msdk.video.dynview.c cVar, View view, final Map map, e eVar) {
        try {
            if (this.c == null) {
                this.c = new HashMap();
            }
            final List<CampaignEx> listG = cVar.g();
            if (view.getContext() == null) {
                eVar.a(com.mbridge.msdk.video.dynview.c.a.NOT_FOUND_CONTEXT);
                return;
            }
            if (map != null && map.containsKey("is_dy_success")) {
                j = ((Boolean) map.get("is_dy_success")).booleanValue();
            }
            ListView listView = (ListView) view.findViewById(a(j, "mbridge_order_view_lv"));
            GridView gridView = (GridView) view.findViewById(a(j, "mbridge_order_view_h_lv"));
            ImageView imageView = (ImageView) view.findViewById(a(j, "mbridge_order_view_iv_close"));
            com.mbridge.msdk.video.dynview.ordercamp.a.a aVar = new com.mbridge.msdk.video.dynview.ordercamp.a.a(listG);
            if (cVar.e() == 1) {
                if (listView != null) {
                    try {
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) listView.getLayoutParams();
                        if (layoutParams != null) {
                            layoutParams.height = -1;
                            float fC = (cVar.c() - af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 720.0f)) / 2.0f;
                            int iB = af.b(com.mbridge.msdk.foundation.controller.b.d().g(), 10.0f);
                            int i = (int) fC;
                            layoutParams.setMargins(iB, i, iB, i);
                            listView.setLayoutParams(layoutParams);
                        }
                    } catch (Exception e2) {
                        aa.d("DataEnergizeWrapper", e2.getMessage());
                    }
                    listView.setAdapter((ListAdapter) aVar);
                    listView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mbridge.msdk.video.dynview.j.a.6
                        @Override // android.widget.AdapterView.OnItemClickListener
                        public final void onItemClick(AdapterView<?> adapterView, View view2, int i2, long j2) {
                            a.a(a.this, map, listG, i2);
                        }
                    });
                }
            } else if (gridView != null) {
                int iD = (int) cVar.d();
                int size = iD / listG.size();
                int i2 = size / 9;
                int i3 = i2 / 2;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) gridView.getLayoutParams();
                layoutParams2.width = iD - (i2 * 2);
                gridView.setLayoutParams(layoutParams2);
                gridView.setColumnWidth((size - i2) - (i3 / 2));
                gridView.setHorizontalSpacing(i3);
                gridView.setStretchMode(0);
                gridView.setNumColumns(listG.size());
                gridView.setAdapter((ListAdapter) aVar);
                gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.mbridge.msdk.video.dynview.j.a.7
                    @Override // android.widget.AdapterView.OnItemClickListener
                    public final void onItemClick(AdapterView<?> adapterView, View view2, int i4, long j2) {
                        a.a(a.this, map, listG, i4);
                    }
                });
            }
            if (imageView != null) {
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mbridge.msdk.video.dynview.j.a.8
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view2) {
                        a.a(a.this, map);
                    }
                });
            }
            if (eVar != null) {
                eVar.a(view, null);
            }
        } catch (Exception unused) {
            if (eVar != null) {
                eVar.a(com.mbridge.msdk.video.dynview.c.a.NOT_FOUND_VIEWOPTION);
            }
        }
    }
}
