package com.hyprmx.android.sdk.footer;

import android.graphics.Bitmap;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\ba\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/footer/FooterContract;", "", "NavigationPresenter", "Presenter", "URLPresenter", "View", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
public interface FooterContract {

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\bg\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&¨\u0006\u0005À\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;", "", "didTapBack", "", "didTapForward", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public interface NavigationPresenter {
        void didTapBack();

        void didTapForward();
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\bg\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H&J\b\u0010\u0004\u001a\u00020\u0002H&J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&J\u0010\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH&J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\bH&¨\u0006\u000eÀ\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;", "", "", "didTapForward", "didTapBack", "", "url", "didTapURL", "", "visible", "setVisible", com.json.mediationsdk.metadata.a.i, "enableForwardNavigation", "enableBackwardNavigation", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
    public interface Presenter {
        void didTapBack();

        void didTapForward();

        void didTapURL(String url);

        void enableBackwardNavigation(boolean enable);

        void enableForwardNavigation(boolean enable);

        void setVisible(boolean visible);
    }

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bg\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;", "", "didTapURL", "", "url", "", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1}, xi = 48)
    public interface URLPresenter {
        void didTapURL(String url);
    }

    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\bg\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\u0007H&J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007H&J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\u0003H&J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H&J*\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010H&J*\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\b\u0010\u0017\u001a\u0004\u0018\u00010\u0010H&J\b\u0010\u001a\u001a\u00020\u0003H&¨\u0006\u001bÀ\u0006\u0003"}, d2 = {"Lcom/hyprmx/android/sdk/footer/FooterContract$View;", "Lcom/hyprmx/android/sdk/mvp/a;", "Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;", "", "visible", "", "setVisible", "", "color", "setBackgroundColor", "minHeight", "setMinimumHeight", com.json.mediationsdk.metadata.a.i, "enableNavigation", "enableForwardNavigation", "enableBackNavigation", "", "text", "setText", "Landroid/graphics/Bitmap;", "image", "width", "height", "linkedURL", "setIcon1", "setIcon2", "isContextInvalid", "HyprMX-Mobile-Android-SDK_release"}, mv = {1, 7, 1})
    public interface View extends com.hyprmx.android.sdk.mvp.a<Presenter> {
        void enableBackNavigation(boolean enable);

        void enableForwardNavigation(boolean enable);

        void enableNavigation(boolean enable);

        /* synthetic */ Object getPresenter();

        boolean isContextInvalid();

        void setBackgroundColor(int color);

        void setIcon1(Bitmap image, int width, int height, String linkedURL);

        void setIcon2(Bitmap image, int width, int height, String linkedURL);

        void setMinimumHeight(int minHeight);

        @Override // com.hyprmx.android.sdk.mvp.a
        /* synthetic */ void setPresenter(Presenter presenter);

        void setText(String text);

        void setVisible(boolean visible);
    }
}
