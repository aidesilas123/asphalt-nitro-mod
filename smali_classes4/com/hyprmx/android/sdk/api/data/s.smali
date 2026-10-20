###### Class com.hyprmx.android.sdk.api.data.s (com.hyprmx.android.sdk.api.data.s)
.class public final Lcom/hyprmx/android/sdk/api/data/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lcom/hyprmx/android/sdk/footer/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/a;)V
    .registers 6

    const-string v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title_color"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "footer"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/api/data/s;->a:Ljava/lang/String;

    iput p3, p0, Lcom/hyprmx/android/sdk/api/data/s;->b:I

    iput-object p4, p0, Lcom/hyprmx/android/sdk/api/data/s;->c:Lcom/hyprmx/android/sdk/footer/a;

    return-void
.end method
