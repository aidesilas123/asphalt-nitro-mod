###### Class com.hyprmx.android.sdk.model.vast.g (com.hyprmx.android.sdk.model.vast.g)
.class public final Lcom/hyprmx/android/sdk/model/vast/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/model/vast/g;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 4

    const-wide/16 v0, 0x0

    const-string p1, ""

    invoke-direct {p0, v0, v1, p1, p1}, Lcom/hyprmx/android/sdk/model/vast/g;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/hyprmx/android/sdk/model/vast/g;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/model/vast/g;->b:Ljava/lang/String;

    iput-wide p1, p0, Lcom/hyprmx/android/sdk/model/vast/g;->c:J

    return-void
.end method
