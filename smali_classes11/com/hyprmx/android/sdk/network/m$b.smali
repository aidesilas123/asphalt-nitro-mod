###### Class com.hyprmx.android.sdk.network.m.b (com.hyprmx.android.sdk.network.m$b)
.class public final Lcom/hyprmx/android/sdk/network/m$b;
.super Lcom/hyprmx/android/sdk/network/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/network/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hyprmx/android/sdk/network/m<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:J


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/util/Map;J)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;J)V"
        }
    .end annotation

    const-string v0, "headers"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/hyprmx/android/sdk/network/m;-><init>(I)V

    iput p1, p0, Lcom/hyprmx/android/sdk/network/m$b;->a:I

    iput-object p2, p0, Lcom/hyprmx/android/sdk/network/m$b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/network/m$b;->c:Ljava/util/Map;

    iput-wide p4, p0, Lcom/hyprmx/android/sdk/network/m$b;->d:J

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/hyprmx/android/sdk/network/m$b;->a:I

    return v0
.end method
