package com.bytedance.sdk.openadsdk.dislike;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGImageView;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.settings.o;
import com.bytedance.sdk.openadsdk.utils.ad;
import com.bytedance.sdk.openadsdk.utils.i;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: TTDislikeDialogDefault.java */
/* JADX INFO: loaded from: classes2.dex */
public class c extends TTDislikeDialogAbstract {
    private TTDislikeListView a;
    private TTDislikeListView b;
    private RelativeLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f1779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f1780e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private b f1781f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a f1782g;
    private String h;
    private String i;
    private List<FilterWord> j;

    /* JADX INFO: compiled from: TTDislikeDialogDefault.java */
    public interface a {
        void a();

        void a(int i, FilterWord filterWord);

        void b();

        void c();

        void d();
    }

    /* JADX INFO: compiled from: TTDislikeDialogDefault.java */
    public static class b extends BaseAdapter {
        private boolean a = true;
        private final List<FilterWord> b;
        private final LayoutInflater c;

        /* JADX INFO: compiled from: TTDislikeDialogDefault.java */
        private static class a {
            TextView a;
            ImageView b;

            private a() {
            }
        }

        public b(LayoutInflater layoutInflater, List<FilterWord> list) {
            this.b = list;
            this.c = layoutInflater;
        }

        private View a(Context context) {
            PAGFrameLayout pAGFrameLayout = new PAGFrameLayout(context);
            pAGFrameLayout.setLayoutParams(new AbsListView.LayoutParams(-1, -1));
            PAGTextView pAGTextView = new PAGTextView(context);
            pAGTextView.setId(i.bq);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ad.b(context, 44.0f));
            layoutParams.gravity = 17;
            pAGTextView.setLayoutParams(layoutParams);
            pAGTextView.setGravity(17);
            pAGTextView.setTextColor(Color.parseColor("#FF4A4A4A"));
            pAGTextView.setTextSize(16.0f);
            PAGImageView pAGImageView = new PAGImageView(context);
            pAGImageView.setId(i.br);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(ad.b(context, 44.0f), ad.b(context, 44.0f));
            layoutParams2.gravity = 8388629;
            pAGImageView.setLayoutParams(layoutParams2);
            pAGImageView.setRotation(180.0f);
            pAGImageView.setScaleType(ImageView.ScaleType.CENTER);
            pAGImageView.setImageResource(s.d(context, "tt_lefterbackicon_titlebar_press_wrapper"));
            pAGFrameLayout.addView(pAGTextView);
            pAGFrameLayout.addView(pAGImageView);
            return pAGFrameLayout;
        }

        public void a() {
            this.b.clear();
            notifyDataSetChanged();
        }

        public void a(List<FilterWord> list) {
            if (list == null || list.isEmpty()) {
                return;
            }
            this.b.clear();
            this.b.addAll(list);
            notifyDataSetChanged();
        }

        public void a(boolean z) {
            this.a = z;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<FilterWord> list = this.b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int i) {
            return this.b.get(i);
        }

        @Override // android.widget.Adapter
        public long getItemId(int i) {
            return i;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewA;
            a aVar;
            if (view == null) {
                aVar = new a();
                viewA = a(this.c.getContext());
                aVar.a = (TextView) viewA.findViewById(i.bq);
                aVar.b = (ImageView) viewA.findViewById(i.br);
                viewA.setTag(aVar);
            } else {
                viewA = view;
                aVar = (a) view.getTag();
            }
            FilterWord filterWord = this.b.get(i);
            aVar.a.setText(filterWord.getName());
            if (!o.aj().T() && i == this.b.size() - 1) {
                aVar.a.setBackgroundResource(s.d(this.c.getContext(), "tt_dislike_bottom_seletor"));
            } else {
                aVar.a.setBackgroundResource(s.d(this.c.getContext(), "tt_dislike_middle_seletor"));
            }
            if (this.a && i == 0) {
                aVar.a.setBackgroundResource(s.d(this.c.getContext(), "tt_dislike_top_seletor"));
            }
            if (filterWord.hasSecondOptions()) {
                aVar.b.setVisibility(0);
            } else {
                aVar.b.setVisibility(8);
            }
            return viewA;
        }
    }

    public c(Context context, String str, List<FilterWord> list) {
        super(context, s.f(context, "tt_dislikeDialog"));
        this.i = str;
        this.j = list;
    }

    private void a() {
        Window window = getWindow();
        if (window != null) {
            window.setGravity(80);
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.y = 50;
            window.setAttributes(attributes);
        }
    }

    private void a(Context context) {
        this.c = (RelativeLayout) findViewById(i.bk);
        this.f1779d = findViewById(i.bn);
        TextView textView = (TextView) findViewById(i.bl);
        TextView textView2 = (TextView) findViewById(i.bm);
        PAGTextView pAGTextView = (PAGTextView) findViewById(i.by);
        textView.setText(s.a(getContext(), "tt_dislike_header_tv_back"));
        textView2.setText(s.a(getContext(), "tt_dislike_header_tv_title"));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                c.this.c();
                if (c.this.f1782g != null) {
                    c.this.f1782g.d();
                }
            }
        });
        if (pAGTextView != null) {
            pAGTextView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    c.this.f1782g.a();
                }
            });
        }
        TTDislikeListView tTDislikeListView = (TTDislikeListView) findViewById(i.bo);
        this.a = tTDislikeListView;
        tTDislikeListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                try {
                    FilterWord filterWord = (FilterWord) adapterView.getAdapter().getItem(i);
                    if (filterWord.hasSecondOptions()) {
                        c.this.a(filterWord);
                        if (c.this.f1782g != null) {
                            c.this.f1782g.a(i, filterWord);
                            return;
                        }
                        return;
                    }
                } catch (Throwable unused) {
                }
                if (c.this.f1782g != null) {
                    try {
                        c.this.f1782g.a(i, (FilterWord) c.this.j.get(i));
                    } catch (Throwable unused2) {
                    }
                }
                c.this.dismiss();
            }
        });
        this.a.setClosedListenerKey(this.h);
        TTDislikeListView tTDislikeListView2 = (TTDislikeListView) findViewById(i.bp);
        this.b = tTDislikeListView2;
        tTDislikeListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.6
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (c.this.f1782g != null) {
                    try {
                        c.this.f1782g.a(i, (FilterWord) adapterView.getAdapter().getItem(i));
                    } catch (Throwable unused) {
                    }
                }
                c.this.dismiss();
            }
        });
        this.b.setClosedListenerKey(this.h);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        b bVar = this.f1781f;
        if (bVar != null) {
            bVar.a(filterWord.getOptions());
        }
        RelativeLayout relativeLayout = this.c;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        View view = this.f1779d;
        if (view != null) {
            view.setVisibility(0);
        }
        TTDislikeListView tTDislikeListView = this.a;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView2 = this.b;
        if (tTDislikeListView2 != null) {
            tTDislikeListView2.setVisibility(0);
        }
    }

    private void b() {
        setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.1
            @Override // android.content.DialogInterface.OnShowListener
            public void onShow(DialogInterface dialogInterface) {
                if (c.this.f1782g != null) {
                    c.this.f1782g.b();
                }
            }
        });
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.bytedance.sdk.openadsdk.dislike.c.2
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                if (c.this.f1782g != null) {
                    c.this.f1782g.c();
                }
            }
        });
        b bVar = new b(getLayoutInflater(), this.j);
        this.f1780e = bVar;
        this.a.setAdapter((ListAdapter) bVar);
        b bVar2 = new b(getLayoutInflater(), new ArrayList());
        this.f1781f = bVar2;
        bVar2.a(false);
        this.b.setAdapter((ListAdapter) this.f1781f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        RelativeLayout relativeLayout = this.c;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        View view = this.f1779d;
        if (view != null) {
            view.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView = this.a;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(0);
        }
        b bVar = this.f1781f;
        if (bVar != null) {
            bVar.a();
        }
        TTDislikeListView tTDislikeListView2 = this.b;
        if (tTDislikeListView2 != null) {
            tTDislikeListView2.setVisibility(8);
        }
    }

    public void a(a aVar) {
        this.f1782g = aVar;
    }

    public void a(String str) {
        this.h = str;
    }

    public void a(String str, List<FilterWord> list) {
        b bVar = this.f1780e;
        if (bVar == null || this.j == null || str == null) {
            return;
        }
        this.i = str;
        this.j = list;
        bVar.a(list);
        setMaterialMeta(str, list);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(ad.c(getContext()) - 120, -2);
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public View getLayoutView() {
        return new d().a(getContext());
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract
    public int[] getTTDislikeListViewIds() {
        return new int[]{i.bo, i.bp};
    }

    @Override // com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract, android.app.Dialog
    protected void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            setCanceledOnTouchOutside(true);
            setCancelable(true);
            a();
            a(getContext());
            b();
            setMaterialMeta(this.i, this.j);
        } catch (Throwable unused) {
            dismiss();
        }
    }

    @Override // android.app.Dialog
    public void show() {
        try {
            super.show();
            c();
        } catch (WindowManager.BadTokenException unused) {
            l.b("dislike bad token");
        }
    }
}
