###### Class com.hyprmx.android.sdk.footer.FooterContract (com.hyprmx.android.sdk.footer.FooterContract)
.class public interface abstract Lcom/hyprmx/android/sdk/footer/FooterContract;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/footer/FooterContract$View;,
        Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;,
        Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;,
        Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008a\u0018\u00002\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u00a8\u0006\u0006\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/footer/FooterContract;",
        "",
        "NavigationPresenter",
        "Presenter",
        "URLPresenter",
        "View",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

###### Class com.hyprmx.android.sdk.footer.FooterContract.NavigationPresenter (com.hyprmx.android.sdk.footer.FooterContract$NavigationPresenter)
.class public interface abstract Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/footer/FooterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NavigationPresenter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0003H&\u00a8\u0006\u0005\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/footer/FooterContract$NavigationPresenter;",
        "",
        "didTapBack",
        "",
        "didTapForward",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract didTapBack()V
.end method

.method public abstract didTapForward()V
.end method

###### Class com.hyprmx.android.sdk.footer.FooterContract.Presenter (com.hyprmx.android.sdk.footer.FooterContract$Presenter)
.class public interface abstract Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/footer/FooterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008g\u0018\u00002\u00020\u0001J\u0008\u0010\u0003\u001a\u00020\u0002H&J\u0008\u0010\u0004\u001a\u00020\u0002H&J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H&J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0008H&J\u0010\u0010\r\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0008H&\u00a8\u0006\u000e\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;",
        "",
        "",
        "didTapForward",
        "didTapBack",
        "",
        "url",
        "didTapURL",
        "",
        "visible",
        "setVisible",
        "enable",
        "enableForwardNavigation",
        "enableBackwardNavigation",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract didTapBack()V
.end method

.method public abstract didTapForward()V
.end method

.method public abstract didTapURL(Ljava/lang/String;)V
.end method

.method public abstract enableBackwardNavigation(Z)V
.end method

.method public abstract enableForwardNavigation(Z)V
.end method

.method public abstract setVisible(Z)V
.end method

###### Class com.hyprmx.android.sdk.footer.FooterContract.URLPresenter (com.hyprmx.android.sdk.footer.FooterContract$URLPresenter)
.class public interface abstract Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/footer/FooterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "URLPresenter"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008g\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0006\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/footer/FooterContract$URLPresenter;",
        "",
        "didTapURL",
        "",
        "url",
        "",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract didTapURL(Ljava/lang/String;)V
.end method

###### Class com.hyprmx.android.sdk.footer.FooterContract.View (com.hyprmx.android.sdk.footer.FooterContract$View)
.class public interface abstract Lcom/hyprmx/android/sdk/footer/FooterContract$View;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/mvp/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/footer/FooterContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hyprmx/android/sdk/mvp/a<",
        "Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008g\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H&J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H&J\u0010\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007H&J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000c\u001a\u00020\u0003H&J\u0010\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\u0010H&J*\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0010H&J*\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0010H&J\u0008\u0010\u001a\u001a\u00020\u0003H&\u00a8\u0006\u001b\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/hyprmx/android/sdk/footer/FooterContract$View;",
        "Lcom/hyprmx/android/sdk/mvp/a;",
        "Lcom/hyprmx/android/sdk/footer/FooterContract$Presenter;",
        "",
        "visible",
        "",
        "setVisible",
        "",
        "color",
        "setBackgroundColor",
        "minHeight",
        "setMinimumHeight",
        "enable",
        "enableNavigation",
        "enableForwardNavigation",
        "enableBackNavigation",
        "",
        "text",
        "setText",
        "Landroid/graphics/Bitmap;",
        "image",
        "width",
        "height",
        "linkedURL",
        "setIcon1",
        "setIcon2",
        "isContextInvalid",
        "HyprMX-Mobile-Android-SDK_release"
    }
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# virtual methods
.method public abstract enableBackNavigation(Z)V
.end method

.method public abstract enableForwardNavigation(Z)V
.end method

.method public abstract enableNavigation(Z)V
.end method

.method public abstract synthetic getPresenter()Ljava/lang/Object;
.end method

.method public abstract isContextInvalid()Z
.end method

.method public abstract setBackgroundColor(I)V
.end method

.method public abstract setIcon1(Landroid/graphics/Bitmap;IILjava/lang/String;)V
.end method

.method public abstract setIcon2(Landroid/graphics/Bitmap;IILjava/lang/String;)V
.end method

.method public abstract setMinimumHeight(I)V
.end method

.method public abstract synthetic setPresenter(Ljava/lang/Object;)V
.end method

.method public abstract setText(Ljava/lang/String;)V
.end method

.method public abstract setVisible(Z)V
.end method
