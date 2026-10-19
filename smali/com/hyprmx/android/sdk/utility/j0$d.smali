###### Class com.hyprmx.android.sdk.utility.j0.d (com.hyprmx.android.sdk.utility.j0$d)
.class public final Lcom/hyprmx/android/sdk/utility/j0$d;
.super Lcom/hyprmx/android/sdk/utility/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/utility/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "NAVIGATION_REDIRECTED"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/hyprmx/android/sdk/utility/j0;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/utility/j0$d;->b:Ljava/lang/String;

    return-void
.end method
