###### Class okio.z.a (okio.z$a)
.class public final Lokio/z$a;
.super Lokio/z;
.source "Timeout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/z;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lokio/z;-><init>()V

    return-void
.end method


# virtual methods
.method public d(J)Lokio/z;
    .registers 3

    return-object p0
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g(JLjava/util/concurrent/TimeUnit;)Lokio/z;
    .registers 4

    const-string p1, "unit"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
