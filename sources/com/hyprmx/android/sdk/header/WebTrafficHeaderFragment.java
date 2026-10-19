package com.hyprmx.android.sdk.header;

import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.hyprmx.android.R;
import com.hyprmx.android.sdk.utility.w;
import com.hyprmx.android.sdk.utility.w0;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\f\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\bq\u0010rJ&\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0004\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016J\u0010\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000bH\u0016J\u0010\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0018\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010\u0018\u001a\u00020\rH\u0016J0\u0010\u001b\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J\b\u0010\u001c\u001a\u00020\rH\u0016J\u0010\u0010\u001e\u001a\u00020\r2\u0006\u0010\u001d\u001a\u00020\u000bH\u0016J\b\u0010\u001f\u001a\u00020\rH\u0016J0\u0010 \u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u000fH\u0016J\b\u0010!\u001a\u00020\rH\u0016J\u0010\u0010\"\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010#\u001a\u00020\rH\u0016J\u0010\u0010$\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u000fH\u0016J\b\u0010$\u001a\u00020\rH\u0016J\b\u0010%\u001a\u00020\rH\u0016J\b\u0010&\u001a\u00020\rH\u0016J\b\u0010'\u001a\u00020\rH\u0016R\"\u0010)\u001a\u00020(8\u0016@\u0016X\u0096.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R\"\u0010/\u001a\u00020\t8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b/\u00100\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\"\u00106\u001a\u0002058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R\"\u0010=\u001a\u00020<8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b=\u0010>\u001a\u0004\b?\u0010@\"\u0004\bA\u0010BR\"\u0010D\u001a\u00020C8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR$\u0010L\u001a\u0012\u0012\u0004\u0012\u00020\t0Jj\b\u0012\u0004\u0012\u00020\t`K8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bL\u0010MR\"\u0010N\u001a\u0002058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bN\u00107\u001a\u0004\bO\u00109\"\u0004\bP\u0010;R\"\u0010Q\u001a\u00020<8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bQ\u0010>\u001a\u0004\bR\u0010@\"\u0004\bS\u0010BR\"\u0010U\u001a\u00020T8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bU\u0010V\u001a\u0004\bW\u0010X\"\u0004\bY\u0010ZR\"\u0010[\u001a\u0002058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b[\u00107\u001a\u0004\b\\\u00109\"\u0004\b]\u0010;R\"\u0010^\u001a\u00020<8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\b^\u0010>\u001a\u0004\b_\u0010@\"\u0004\b`\u0010BR\"\u0010a\u001a\u00020T8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\ba\u0010V\u001a\u0004\bb\u0010X\"\u0004\bc\u0010ZR\"\u0010d\u001a\u0002058\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bd\u00107\u001a\u0004\be\u00109\"\u0004\bf\u0010;R\"\u0010h\u001a\u00020g8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR\"\u0010n\u001a\u00020C8\u0006@\u0006X\u0086.¢\u0006\u0012\n\u0004\bn\u0010E\u001a\u0004\bo\u0010G\"\u0004\bp\u0010I¨\u0006s"}, d2 = {"Lcom/hyprmx/android/sdk/header/WebTrafficHeaderFragment;", "Landroidx/fragment/app/Fragment;", "Lcom/hyprmx/android/sdk/header/d;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "text", "", "setTitleText", "", "minHeight", "setMinHeight", "color", "setBackgroundColor", "count", "setPageCount", "index", "setPageCountState", "hidePageCount", "chevronColor", "minWidth", "showNextButton", "hideNextButton", "countDown", "setCountDown", "hideCountDown", "showFinishButton", "hideFinishButton", "showCloseButton", "hideCloseButton", "showProgressSpinner", "hideProgressSpinner", "enableCloseButton", "disableCloseButton", "Lcom/hyprmx/android/sdk/header/c;", "presenter", "Lcom/hyprmx/android/sdk/header/c;", "getPresenter", "()Lcom/hyprmx/android/sdk/header/c;", "setPresenter", "(Lcom/hyprmx/android/sdk/header/c;)V", "header", "Landroid/view/View;", "getHeader", "()Landroid/view/View;", "setHeader", "(Landroid/view/View;)V", "Landroid/widget/TextView;", "titleTextView", "Landroid/widget/TextView;", "getTitleTextView", "()Landroid/widget/TextView;", "setTitleTextView", "(Landroid/widget/TextView;)V", "Landroid/widget/ImageView;", "closeButton", "Landroid/widget/ImageView;", "getCloseButton", "()Landroid/widget/ImageView;", "setCloseButton", "(Landroid/widget/ImageView;)V", "Landroid/widget/LinearLayout;", "headerContainer", "Landroid/widget/LinearLayout;", "getHeaderContainer", "()Landroid/widget/LinearLayout;", "setHeaderContainer", "(Landroid/widget/LinearLayout;)V", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "pageCountLines", "Ljava/util/ArrayList;", "nextButtonText", "getNextButtonText", "setNextButtonText", "nextButtonChevron", "getNextButtonChevron", "setNextButtonChevron", "Landroid/widget/RelativeLayout;", "nextButton", "Landroid/widget/RelativeLayout;", "getNextButton", "()Landroid/widget/RelativeLayout;", "setNextButton", "(Landroid/widget/RelativeLayout;)V", "finishButtonText", "getFinishButtonText", "setFinishButtonText", "finishButtonChevron", "getFinishButtonChevron", "setFinishButtonChevron", "finishButton", "getFinishButton", "setFinishButton", "countDownText", "getCountDownText", "setCountDownText", "Landroid/widget/ProgressBar;", "spinner", "Landroid/widget/ProgressBar;", "getSpinner", "()Landroid/widget/ProgressBar;", "setSpinner", "(Landroid/widget/ProgressBar;)V", "pageCountIndicator", "getPageCountIndicator", "setPageCountIndicator", "<init>", "()V", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
public final class WebTrafficHeaderFragment extends Fragment implements d {
    public ImageView closeButton;
    public TextView countDownText;
    public RelativeLayout finishButton;
    public ImageView finishButtonChevron;
    public TextView finishButtonText;
    public View header;
    public LinearLayout headerContainer;
    public RelativeLayout nextButton;
    public ImageView nextButtonChevron;
    public TextView nextButtonText;
    public LinearLayout pageCountIndicator;
    private final ArrayList<View> pageCountLines = new ArrayList<>();
    public c presenter;
    public ProgressBar spinner;
    public TextView titleTextView;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3$lambda$0(WebTrafficHeaderFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m218getPresenter().f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3$lambda$1(WebTrafficHeaderFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m218getPresenter().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreateView$lambda$3$lambda$2(WebTrafficHeaderFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.m218getPresenter().d();
    }

    public void disableCloseButton() {
        getCloseButton().setEnabled(false);
    }

    public void enableCloseButton() {
        getCloseButton().setEnabled(true);
    }

    public final ImageView getCloseButton() {
        ImageView imageView = this.closeButton;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("closeButton");
        return null;
    }

    public final TextView getCountDownText() {
        TextView textView = this.countDownText;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("countDownText");
        return null;
    }

    public final RelativeLayout getFinishButton() {
        RelativeLayout relativeLayout = this.finishButton;
        if (relativeLayout != null) {
            return relativeLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("finishButton");
        return null;
    }

    public final ImageView getFinishButtonChevron() {
        ImageView imageView = this.finishButtonChevron;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("finishButtonChevron");
        return null;
    }

    public final TextView getFinishButtonText() {
        TextView textView = this.finishButtonText;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("finishButtonText");
        return null;
    }

    public final View getHeader() {
        View view = this.header;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("header");
        return null;
    }

    public final LinearLayout getHeaderContainer() {
        LinearLayout linearLayout = this.headerContainer;
        if (linearLayout != null) {
            return linearLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("headerContainer");
        return null;
    }

    public final RelativeLayout getNextButton() {
        RelativeLayout relativeLayout = this.nextButton;
        if (relativeLayout != null) {
            return relativeLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("nextButton");
        return null;
    }

    public final ImageView getNextButtonChevron() {
        ImageView imageView = this.nextButtonChevron;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("nextButtonChevron");
        return null;
    }

    public final TextView getNextButtonText() {
        TextView textView = this.nextButtonText;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("nextButtonText");
        return null;
    }

    public final LinearLayout getPageCountIndicator() {
        LinearLayout linearLayout = this.pageCountIndicator;
        if (linearLayout != null) {
            return linearLayout;
        }
        Intrinsics.throwUninitializedPropertyAccessException("pageCountIndicator");
        return null;
    }

    /* JADX INFO: renamed from: getPresenter, reason: merged with bridge method [inline-methods] */
    public c m218getPresenter() {
        c cVar = this.presenter;
        if (cVar != null) {
            return cVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("presenter");
        return null;
    }

    public final ProgressBar getSpinner() {
        ProgressBar progressBar = this.spinner;
        if (progressBar != null) {
            return progressBar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("spinner");
        return null;
    }

    public final TextView getTitleTextView() {
        TextView textView = this.titleTextView;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("titleTextView");
        return null;
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void hideCloseButton() {
        getCloseButton().setVisibility(8);
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void hideCountDown() {
        getCountDownText().setVisibility(8);
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void hideFinishButton() {
        getFinishButton().setVisibility(8);
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void hideNextButton() {
        getNextButton().setVisibility(8);
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void hidePageCount() {
        getPageCountIndicator().setVisibility(4);
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void hideProgressSpinner() {
        getSpinner().setVisibility(8);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.hyprmx_header, container, false);
        Intrinsics.checkNotNullExpressionValue(viewInflate, "inflater.inflate(R.layou…header, container, false)");
        setHeader(viewInflate);
        View header = getHeader();
        View viewFindViewById = header.findViewById(R.id.hyprmx_header);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(R.id.hyprmx_header)");
        setHeaderContainer((LinearLayout) viewFindViewById);
        View viewFindViewById2 = header.findViewById(R.id.hyprmx_title);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById2, "findViewById(R.id.hyprmx_title)");
        setTitleTextView((TextView) viewFindViewById2);
        View viewFindViewById3 = header.findViewById(R.id.hyprmx_close_button);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById3, "findViewById(R.id.hyprmx_close_button)");
        setCloseButton((ImageView) viewFindViewById3);
        View viewFindViewById4 = header.findViewById(R.id.hyprmx_next_container);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById4, "findViewById(R.id.hyprmx_next_container)");
        setNextButton((RelativeLayout) viewFindViewById4);
        View viewFindViewById5 = header.findViewById(R.id.hyprmx_next);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById5, "findViewById(R.id.hyprmx_next)");
        setNextButtonText((TextView) viewFindViewById5);
        View viewFindViewById6 = header.findViewById(R.id.hyprmx_next_chevron);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById6, "findViewById(R.id.hyprmx_next_chevron)");
        setNextButtonChevron((ImageView) viewFindViewById6);
        View viewFindViewById7 = header.findViewById(R.id.hyprmx_finish);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById7, "findViewById(R.id.hyprmx_finish)");
        setFinishButtonText((TextView) viewFindViewById7);
        View viewFindViewById8 = header.findViewById(R.id.hyprmx_finish_chevron);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById8, "findViewById(R.id.hyprmx_finish_chevron)");
        setFinishButtonChevron((ImageView) viewFindViewById8);
        View viewFindViewById9 = header.findViewById(R.id.hyprmx_finish_container);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById9, "findViewById(R.id.hyprmx_finish_container)");
        setFinishButton((RelativeLayout) viewFindViewById9);
        View viewFindViewById10 = header.findViewById(R.id.hyprmx_countdown);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById10, "findViewById(R.id.hyprmx_countdown)");
        setCountDownText((TextView) viewFindViewById10);
        getFinishButton().setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.header.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebTrafficHeaderFragment.onCreateView$lambda$3$lambda$0(this.a, view);
            }
        });
        getCloseButton().setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.header.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebTrafficHeaderFragment.onCreateView$lambda$3$lambda$1(this.a, view);
            }
        });
        getNextButton().setOnClickListener(new View.OnClickListener() { // from class: com.hyprmx.android.sdk.header.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                WebTrafficHeaderFragment.onCreateView$lambda$3$lambda$2(this.a, view);
            }
        });
        View viewFindViewById11 = header.findViewById(R.id.hyprmx_progress_spinner);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById11, "findViewById(R.id.hyprmx_progress_spinner)");
        setSpinner((ProgressBar) viewFindViewById11);
        View viewFindViewById12 = getHeader().findViewById(R.id.hyprmx_page_count);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById12, "header.findViewById(R.id.hyprmx_page_count)");
        setPageCountIndicator((LinearLayout) viewFindViewById12);
        return getHeader();
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void setBackgroundColor(int color) {
        getHeaderContainer().setBackgroundColor(color);
    }

    public final void setCloseButton(ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.closeButton = imageView;
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void setCountDown(String countDown) {
        Intrinsics.checkNotNullParameter(countDown, "countDown");
        getCountDownText().setVisibility(0);
        getCountDownText().setText(w0.b(countDown));
    }

    public final void setCountDownText(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.countDownText = textView;
    }

    public final void setFinishButton(RelativeLayout relativeLayout) {
        Intrinsics.checkNotNullParameter(relativeLayout, "<set-?>");
        this.finishButton = relativeLayout;
    }

    public final void setFinishButtonChevron(ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.finishButtonChevron = imageView;
    }

    public final void setFinishButtonText(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.finishButtonText = textView;
    }

    public final void setHeader(View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.header = view;
    }

    public final void setHeaderContainer(LinearLayout linearLayout) {
        Intrinsics.checkNotNullParameter(linearLayout, "<set-?>");
        this.headerContainer = linearLayout;
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void setMinHeight(int minHeight) {
        getHeaderContainer().setMinimumHeight(w.a(minHeight, getContext()));
    }

    public final void setNextButton(RelativeLayout relativeLayout) {
        Intrinsics.checkNotNullParameter(relativeLayout, "<set-?>");
        this.nextButton = relativeLayout;
    }

    public final void setNextButtonChevron(ImageView imageView) {
        Intrinsics.checkNotNullParameter(imageView, "<set-?>");
        this.nextButtonChevron = imageView;
    }

    public final void setNextButtonText(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.nextButtonText = textView;
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void setPageCount(int count, int color) {
        getPageCountIndicator().removeAllViews();
        this.pageCountLines.clear();
        getPageCountIndicator().setVisibility(0);
        for (int i = 0; i < count; i++) {
            FragmentActivity activity = getActivity();
            if (activity != null) {
                View viewFindViewById = activity.getLayoutInflater().inflate(R.layout.hyprmx_page_count_indicator, getPageCountIndicator()).findViewById(R.id.page_count_line);
                Intrinsics.checkNotNullExpressionValue(viewFindViewById, "view.findViewById(R.id.page_count_line)");
                viewFindViewById.setBackgroundColor(color);
                viewFindViewById.setId(i);
                this.pageCountLines.add(viewFindViewById);
            }
        }
    }

    public final void setPageCountIndicator(LinearLayout linearLayout) {
        Intrinsics.checkNotNullParameter(linearLayout, "<set-?>");
        this.pageCountIndicator = linearLayout;
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void setPageCountState(int index, int color) {
        this.pageCountLines.get(index).setBackgroundColor(color);
    }

    @Override // com.hyprmx.android.sdk.mvp.a
    public void setPresenter(c cVar) {
        Intrinsics.checkNotNullParameter(cVar, "<set-?>");
        this.presenter = cVar;
    }

    public final void setSpinner(ProgressBar progressBar) {
        Intrinsics.checkNotNullParameter(progressBar, "<set-?>");
        this.spinner = progressBar;
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void setTitleText(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        getTitleTextView().setText(w0.b(text));
    }

    public final void setTitleTextView(TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.titleTextView = textView;
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void showCloseButton(int color) {
        Drawable drawable;
        String str;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            int i = Build.VERSION.SDK_INT;
            Resources resources = activity.getResources();
            if (i >= 21) {
                drawable = resources.getDrawable(R.drawable.hyprmx_close_button, null);
                str = "{\n        activity.resou…ose_button, null)\n      }";
            } else {
                drawable = resources.getDrawable(R.drawable.hyprmx_close_button);
                str = "{\n        activity.resou…rmx_close_button)\n      }";
            }
            Intrinsics.checkNotNullExpressionValue(drawable, str);
            drawable.mutate().setColorFilter(color, PorterDuff.Mode.SRC_IN);
            getCloseButton().setImageDrawable(drawable);
            getCloseButton().setVisibility(0);
        }
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void showFinishButton(String text, int color, int chevronColor, int minHeight, int minWidth) {
        Intrinsics.checkNotNullParameter(text, "text");
        getFinishButton().setVisibility(0);
        getFinishButtonText().setText(w0.b(text));
        getFinishButton().getBackground().mutate().setColorFilter(color, PorterDuff.Mode.SRC_IN);
        getFinishButton().setMinimumWidth(w.a(minWidth, getContext()));
        getFinishButton().setMinimumHeight(w.a(minHeight, getContext()));
        getFinishButtonChevron().setColorFilter(chevronColor, PorterDuff.Mode.SRC_IN);
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void showNextButton(String text, int color, int chevronColor, int minHeight, int minWidth) {
        Intrinsics.checkNotNullParameter(text, "text");
        getNextButton().setVisibility(0);
        getNextButtonText().setText(w0.b(text));
        getNextButton().getBackground().mutate().setColorFilter(color, PorterDuff.Mode.SRC_IN);
        getNextButton().setMinimumHeight(w.a(minHeight, getContext()));
        getNextButton().setMinimumWidth(w.a(minWidth, getContext()));
        getNextButtonChevron().setColorFilter(chevronColor, PorterDuff.Mode.SRC_IN);
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void showProgressSpinner() {
        getSpinner().setVisibility(0);
    }

    @Override // com.hyprmx.android.sdk.header.d
    public void showProgressSpinner(int color) {
        getSpinner().getIndeterminateDrawable().setColorFilter(color, PorterDuff.Mode.SRC_IN);
        getSpinner().setVisibility(0);
    }
}
