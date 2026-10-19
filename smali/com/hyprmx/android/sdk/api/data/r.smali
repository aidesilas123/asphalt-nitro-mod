###### Class com.hyprmx.android.sdk.api.data.r (com.hyprmx.android.sdk.api.data.r)
.class public final Lcom/hyprmx/android/sdk/api/data/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/api/data/r$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/hyprmx/android/sdk/api/data/l;

.field public final b:Lcom/hyprmx/android/sdk/api/data/s;


# direct methods
.method public constructor <init>(Lcom/hyprmx/android/sdk/api/data/l;Lcom/hyprmx/android/sdk/api/data/s;)V
    .registers 4

    const-string v0, "noAd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoForm"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/api/data/r;->a:Lcom/hyprmx/android/sdk/api/data/l;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/api/data/r;->b:Lcom/hyprmx/android/sdk/api/data/s;

    return-void
.end method
