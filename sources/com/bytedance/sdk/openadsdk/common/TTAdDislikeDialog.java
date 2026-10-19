package com.bytedance.sdk.openadsdk.common;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bytedance.sdk.component.utils.l;
import com.bytedance.sdk.component.utils.s;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.core.customview.PAGFrameLayout;
import com.bytedance.sdk.openadsdk.core.customview.PAGTextView;
import com.bytedance.sdk.openadsdk.core.model.q;
import com.bytedance.sdk.openadsdk.dislike.TTDislikeListView;
import com.bytedance.sdk.openadsdk.dislike.c;
import com.bytedance.sdk.openadsdk.dislike.e;
import com.bytedance.sdk.openadsdk.utils.ad;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class TTAdDislikeDialog extends PAGFrameLayout {
    private View a;
    private TTDislikeListView b;
    private TTDislikeListView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RelativeLayout f1252d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private View f1253e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c.b f1254f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private c.b f1255g;
    private q h;
    private a i;
    private Context j;
    private boolean k;
    private com.bytedance.sdk.openadsdk.dislike.e l;

    public interface a {
        void a(int i, FilterWord filterWord);

        void a(View view);

        void b(View view);

        void c(View view);
    }

    public TTAdDislikeDialog(@NonNull Context context) {
        this(context, (AttributeSet) null);
    }

    public TTAdDislikeDialog(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TTAdDislikeDialog(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k = false;
        a(context, attributeSet);
    }

    public TTAdDislikeDialog(@NonNull Context context, @NonNull q qVar) {
        this(context.getApplicationContext());
        this.j = context;
        this.h = qVar;
        d();
    }

    private void a(Context context, AttributeSet attributeSet) {
        setClickable(true);
        setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTAdDislikeDialog.this.b();
            }
        });
        setBackgroundColor(Color.parseColor("#80000000"));
        this.a = new com.bytedance.sdk.openadsdk.dislike.d().a(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
        layoutParams.gravity = 17;
        layoutParams.leftMargin = ad.b(getContext(), 20.0f);
        layoutParams.rightMargin = ad.b(getContext(), 20.0f);
        this.a.setLayoutParams(layoutParams);
        this.a.setClickable(true);
        e();
        d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(FilterWord filterWord) {
        if (filterWord == null) {
            return;
        }
        c.b bVar = this.f1255g;
        if (bVar != null) {
            bVar.a(filterWord.getOptions());
        }
        RelativeLayout relativeLayout = this.f1252d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        View view = this.f1253e;
        if (view != null) {
            view.setVisibility(0);
        }
        TTDislikeListView tTDislikeListView = this.b;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView2 = this.c;
        if (tTDislikeListView2 != null) {
            tTDislikeListView2.setVisibility(0);
        }
    }

    private void d() {
        if (this.h == null) {
            return;
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
        c.b bVar = new c.b(layoutInflaterFrom, this.h.ae());
        this.f1254f = bVar;
        this.b.setAdapter((ListAdapter) bVar);
        c.b bVar2 = new c.b(layoutInflaterFrom, new ArrayList());
        this.f1255g = bVar2;
        bVar2.a(false);
        this.c.setAdapter((ListAdapter) this.f1255g);
        this.b.setMaterialMeta(this.h.ac());
        this.c.setMaterialMeta(this.h.ac());
    }

    private void e() {
        this.f1252d = (RelativeLayout) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.bk);
        this.f1253e = this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.bn);
        PAGTextView pAGTextView = (PAGTextView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.by);
        TextView textView = (TextView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.bl);
        TextView textView2 = (TextView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.bm);
        textView.setText(s.a(getContext(), "tt_dislike_header_tv_back"));
        textView2.setText(s.a(getContext(), "tt_dislike_header_tv_title"));
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTAdDislikeDialog.this.f();
                if (TTAdDislikeDialog.this.i != null) {
                    TTAdDislikeDialog.this.i.c(view);
                }
            }
        });
        if (pAGTextView != null) {
            pAGTextView.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    TTAdDislikeDialog.this.c();
                }
            });
        }
        TTDislikeListView tTDislikeListView = (TTDislikeListView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.bo);
        this.b = tTDislikeListView;
        tTDislikeListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.4
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                try {
                    FilterWord filterWord = (FilterWord) adapterView.getAdapter().getItem(i);
                    if (filterWord.hasSecondOptions()) {
                        TTAdDislikeDialog.this.a(filterWord);
                        if (TTAdDislikeDialog.this.i != null) {
                            TTAdDislikeDialog.this.i.a(i, filterWord);
                            return;
                        }
                        return;
                    }
                } catch (Throwable unused) {
                }
                if (TTAdDislikeDialog.this.i != null) {
                    try {
                        TTAdDislikeDialog.this.i.a(i, TTAdDislikeDialog.this.h.ae().get(i));
                    } catch (Throwable unused2) {
                    }
                }
                TTAdDislikeDialog.this.b();
            }
        });
        TTDislikeListView tTDislikeListView2 = (TTDislikeListView) this.a.findViewById(com.bytedance.sdk.openadsdk.utils.i.bp);
        this.c = tTDislikeListView2;
        tTDislikeListView2.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.5
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i, long j) {
                if (TTAdDislikeDialog.this.i != null) {
                    try {
                        TTAdDislikeDialog.this.i.a(i, (FilterWord) adapterView.getAdapter().getItem(i));
                    } catch (Throwable unused) {
                    }
                }
                TTAdDislikeDialog.this.b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        RelativeLayout relativeLayout = this.f1252d;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(8);
        }
        View view = this.f1253e;
        if (view != null) {
            view.setVisibility(8);
        }
        TTDislikeListView tTDislikeListView = this.b;
        if (tTDislikeListView != null) {
            tTDislikeListView.setVisibility(0);
        }
        c.b bVar = this.f1255g;
        if (bVar != null) {
            bVar.a();
        }
        TTDislikeListView tTDislikeListView2 = this.c;
        if (tTDislikeListView2 != null) {
            tTDislikeListView2.setVisibility(8);
        }
    }

    private e.a g() {
        return new e.a() { // from class: com.bytedance.sdk.openadsdk.common.TTAdDislikeDialog.6
            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void a() {
                TTAdDislikeDialog.this.setVisibility(8);
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void a(int i, FilterWord filterWord) {
                if (TTAdDislikeDialog.this.i != null) {
                    TTAdDislikeDialog.this.i.a(i, filterWord);
                    TTAdDislikeDialog.this.i.b(TTAdDislikeDialog.this);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void b() {
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void c() {
                TTAdDislikeDialog.this.setVisibility(0);
            }

            @Override // com.bytedance.sdk.openadsdk.dislike.e.a
            public void d() {
                TTAdDislikeDialog.this.setVisibility(0);
            }
        };
    }

    public void a() {
        l.b("TTAD.DisLD", "showDislike: ");
        if (this.a.getParent() == null) {
            addView(this.a);
        }
        f();
        setVisibility(0);
        this.k = true;
        a aVar = this.i;
        if (aVar != null) {
            aVar.a(this);
        }
    }

    public void b() {
        setVisibility(8);
        this.k = false;
        a aVar = this.i;
        if (aVar != null) {
            aVar.b(this);
        }
    }

    public void c() {
        Context context = this.j;
        if (context instanceof Activity) {
            boolean z = !((Activity) context).isFinishing();
            com.bytedance.sdk.openadsdk.dislike.e eVar = new com.bytedance.sdk.openadsdk.dislike.e(this.j);
            this.l = eVar;
            eVar.a(g());
            this.l.a(this.h.ac(), this.h.ao().toString());
            if (!z || this.l.isShowing()) {
                return;
            }
            this.l.show();
        }
    }

    public void setCallback(a aVar) {
        this.i = aVar;
    }
}
