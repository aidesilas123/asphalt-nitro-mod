###### Class com.hyprmx.android.sdk.banner.HyprMXBannerView.a (com.hyprmx.android.sdk.banner.HyprMXBannerView$a)
.class public final Lcom/hyprmx/android/sdk/banner/HyprMXBannerView$a;
.super Lkotlin/x/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/x/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;)V
    .registers 3

    iput-object p2, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView$a;->a:Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;

    invoke-direct {p0, p1}, Lkotlin/x/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p2, p0, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView$a;->a:Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;

    invoke-virtual {p2}, Lcom/hyprmx/android/sdk/banner/HyprMXBannerView;->getPresenter$HyprMX_Mobile_Android_SDK_release()Lcom/hyprmx/android/sdk/banner/e;

    move-result-object p2

    if-eqz p2, :cond_1b

    invoke-interface {p2, p1}, Lcom/hyprmx/android/sdk/banner/e;->a(Z)V

    :cond_1b
    return-void
.end method
