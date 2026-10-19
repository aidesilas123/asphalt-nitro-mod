###### Class com.hyprmx.android.sdk.api.data.i (com.hyprmx.android.sdk.api.data.i)
.class public final Lcom/hyprmx/android/sdk/api/data/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hyprmx/android/sdk/api/data/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/hyprmx/android/sdk/api/data/m;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/api/data/m;Ljava/lang/String;)V
    .registers 7

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "catalogFrameUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "allowedOrientation"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/api/data/i;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/api/data/i;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/api/data/i;->c:Lcom/hyprmx/android/sdk/api/data/m;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/api/data/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Lcom/hyprmx/android/sdk/api/data/m;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/i;->c:Lcom/hyprmx/android/sdk/api/data/m;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/api/data/i;->b:Ljava/lang/String;

    return-object v0
.end method
