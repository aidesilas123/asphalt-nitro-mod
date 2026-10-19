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
