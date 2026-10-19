package io.didomi.drawable;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import io.didomi.drawable.view.mobile.DidomiToggle;
import io.didomi.drawable.view.mobile.HeaderView;

/* JADX INFO: renamed from: io.didomi.sdk.n1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1838n1 implements ViewBinding {

    @NonNull
    public final DidomiToggle A;

    @NonNull
    public final TextView B;

    @NonNull
    public final View C;

    @NonNull
    public final AppCompatButton D;

    @NonNull
    public final TextView E;

    @NonNull
    public final NestedScrollView F;

    @NonNull
    public final TextView G;

    @NonNull
    public final G2 H;

    @NonNull
    public final View I;

    @NonNull
    private final ConstraintLayout a;

    @NonNull
    public final AppCompatImageButton b;

    @NonNull
    public final LinearLayout c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final View f8706d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f8707e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final Group f8708f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f8709g;

    @NonNull
    public final DidomiToggle h;

    @NonNull
    public final TextView i;

    @NonNull
    public final View j;

    @NonNull
    public final TextView k;

    @NonNull
    public final TextView l;

    @NonNull
    public final LinearLayout m;

    @NonNull
    public final View n;

    @NonNull
    public final TextView o;

    @NonNull
    public final HeaderView p;

    @NonNull
    public final TextView q;

    @NonNull
    public final RecyclerView r;

    @NonNull
    public final ProgressBar s;

    @NonNull
    public final LinearLayout t;

    @NonNull
    public final View u;

    @NonNull
    public final TextView v;

    @NonNull
    public final AppCompatButton w;

    @NonNull
    public final AppCompatButton x;

    @NonNull
    public final Group y;

    @NonNull
    public final LinearLayout z;

    private C1838n1(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageButton appCompatImageButton, @NonNull LinearLayout linearLayout, @NonNull View view, @NonNull TextView textView, @NonNull Group group, @NonNull LinearLayout linearLayout2, @NonNull DidomiToggle didomiToggle, @NonNull TextView textView2, @NonNull View view2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull LinearLayout linearLayout3, @NonNull View view3, @NonNull TextView textView5, @NonNull HeaderView headerView, @NonNull TextView textView6, @NonNull RecyclerView recyclerView, @NonNull ProgressBar progressBar, @NonNull LinearLayout linearLayout4, @NonNull View view4, @NonNull TextView textView7, @NonNull AppCompatButton appCompatButton, @NonNull AppCompatButton appCompatButton2, @NonNull Group group2, @NonNull LinearLayout linearLayout5, @NonNull DidomiToggle didomiToggle2, @NonNull TextView textView8, @NonNull View view5, @NonNull AppCompatButton appCompatButton3, @NonNull TextView textView9, @NonNull NestedScrollView nestedScrollView, @NonNull TextView textView10, @NonNull G2 g2, @NonNull View view6) {
        this.a = constraintLayout;
        this.b = appCompatImageButton;
        this.c = linearLayout;
        this.f8706d = view;
        this.f8707e = textView;
        this.f8708f = group;
        this.f8709g = linearLayout2;
        this.h = didomiToggle;
        this.i = textView2;
        this.j = view2;
        this.k = textView3;
        this.l = textView4;
        this.m = linearLayout3;
        this.n = view3;
        this.o = textView5;
        this.p = headerView;
        this.q = textView6;
        this.r = recyclerView;
        this.s = progressBar;
        this.t = linearLayout4;
        this.u = view4;
        this.v = textView7;
        this.w = appCompatButton;
        this.x = appCompatButton2;
        this.y = group2;
        this.z = linearLayout5;
        this.A = didomiToggle2;
        this.B = textView8;
        this.C = view5;
        this.D = appCompatButton3;
        this.E = textView9;
        this.F = nestedScrollView;
        this.G = textView10;
        this.H = g2;
        this.I = view6;
    }

    @NonNull
    public static C1838n1 a(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.didomi_fragment_vendor_detail, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @NonNull
    public static C1838n1 a(@NonNull View view) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        View viewFindChildViewById3;
        View viewFindChildViewById4;
        View viewFindChildViewById5;
        View viewFindChildViewById6;
        int i = R.id.button_vendor_detail_header_close;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) ViewBindings.findChildViewById(view, i);
        if (appCompatImageButton != null) {
            i = R.id.vendor_additional_dataprocessing_list;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
            if (linearLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = R.id.vendor_additional_dataprocessing_separator))) != null) {
                i = R.id.vendor_additional_dataprocessing_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.vendor_consent_dataprocessing_header;
                    Group group = (Group) ViewBindings.findChildViewById(view, i);
                    if (group != null) {
                        i = R.id.vendor_consent_dataprocessing_list;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                        if (linearLayout2 != null) {
                            i = R.id.vendor_consent_dataprocessing_switch;
                            DidomiToggle didomiToggle = (DidomiToggle) ViewBindings.findChildViewById(view, i);
                            if (didomiToggle != null) {
                                i = R.id.vendor_consent_dataprocessing_title;
                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView2 != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.vendor_consent_separator))) != null) {
                                    i = R.id.vendor_cookies_section_disclaimer;
                                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView3 != null) {
                                        i = R.id.vendor_cookies_section_title;
                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView4 != null) {
                                            i = R.id.vendor_data_categories_list;
                                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout3 != null && (viewFindChildViewById3 = ViewBindings.findChildViewById(view, (i = R.id.vendor_data_categories_separator))) != null) {
                                                i = R.id.vendor_data_categories_title;
                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView5 != null) {
                                                    i = R.id.vendor_detail_header;
                                                    HeaderView headerView = (HeaderView) ViewBindings.findChildViewById(view, i);
                                                    if (headerView != null) {
                                                        i = R.id.vendor_device_storage_disclosures_link;
                                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView6 != null) {
                                                            i = R.id.vendor_device_storage_disclosures_list;
                                                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i);
                                                            if (recyclerView != null) {
                                                                i = R.id.vendor_device_storage_disclosures_loader;
                                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                                                if (progressBar != null) {
                                                                    i = R.id.vendor_essential_purposes_list;
                                                                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                    if (linearLayout4 != null && (viewFindChildViewById4 = ViewBindings.findChildViewById(view, (i = R.id.vendor_essential_purposes_separator))) != null) {
                                                                        i = R.id.vendor_essential_purposes_title;
                                                                        TextView textView7 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView7 != null) {
                                                                            i = R.id.vendor_iab_tcf_link;
                                                                            AppCompatButton appCompatButton = (AppCompatButton) ViewBindings.findChildViewById(view, i);
                                                                            if (appCompatButton != null) {
                                                                                i = R.id.vendor_leg_int_claim_link;
                                                                                AppCompatButton appCompatButton2 = (AppCompatButton) ViewBindings.findChildViewById(view, i);
                                                                                if (appCompatButton2 != null) {
                                                                                    i = R.id.vendor_li_dataprocessing_header;
                                                                                    Group group2 = (Group) ViewBindings.findChildViewById(view, i);
                                                                                    if (group2 != null) {
                                                                                        i = R.id.vendor_li_dataprocessing_list;
                                                                                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                                                                        if (linearLayout5 != null) {
                                                                                            i = R.id.vendor_li_dataprocessing_switch;
                                                                                            DidomiToggle didomiToggle2 = (DidomiToggle) ViewBindings.findChildViewById(view, i);
                                                                                            if (didomiToggle2 != null) {
                                                                                                i = R.id.vendor_li_dataprocessing_title;
                                                                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                if (textView8 != null && (viewFindChildViewById5 = ViewBindings.findChildViewById(view, (i = R.id.vendor_li_separator))) != null) {
                                                                                                    i = R.id.vendor_privacy_link;
                                                                                                    AppCompatButton appCompatButton3 = (AppCompatButton) ViewBindings.findChildViewById(view, i);
                                                                                                    if (appCompatButton3 != null) {
                                                                                                        i = R.id.vendor_privacy_policy_disclaimer;
                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                        if (textView9 != null) {
                                                                                                            i = R.id.vendor_scroll_view;
                                                                                                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                                                                            if (nestedScrollView != null) {
                                                                                                                i = R.id.vendor_title;
                                                                                                                TextView textView10 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                                                if (textView10 != null && (viewFindChildViewById6 = ViewBindings.findChildViewById(view, (i = R.id.vendors_footer))) != null) {
                                                                                                                    G2 g2A = G2.a(viewFindChildViewById6);
                                                                                                                    i = R.id.view_vendors_bottom_divider;
                                                                                                                    View viewFindChildViewById7 = ViewBindings.findChildViewById(view, i);
                                                                                                                    if (viewFindChildViewById7 != null) {
                                                                                                                        return new C1838n1((ConstraintLayout) view, appCompatImageButton, linearLayout, viewFindChildViewById, textView, group, linearLayout2, didomiToggle, textView2, viewFindChildViewById2, textView3, textView4, linearLayout3, viewFindChildViewById3, textView5, headerView, textView6, recyclerView, progressBar, linearLayout4, viewFindChildViewById4, textView7, appCompatButton, appCompatButton2, group2, linearLayout5, didomiToggle2, textView8, viewFindChildViewById5, appCompatButton3, textView9, nestedScrollView, textView10, g2A, viewFindChildViewById7);
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ConstraintLayout getRoot() {
        return this.a;
    }
}
