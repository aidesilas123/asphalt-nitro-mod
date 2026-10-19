###### Class okio.internal.ZipKt.d (okio.internal.ZipKt$d)
.class final Lokio/internal/ZipKt$d;
.super Lkotlin/jvm/internal/t;
.source "zip.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipKt;->f(Lokio/e;Lokio/FileMetadata;)Lokio/FileMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lokio/e;

.field final synthetic b:Lkotlin/jvm/internal/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/l0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lkotlin/jvm/internal/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/l0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lkotlin/jvm/internal/l0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/l0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lokio/e;Lkotlin/jvm/internal/l0;Lkotlin/jvm/internal/l0;Lkotlin/jvm/internal/l0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/e;",
            "Lkotlin/jvm/internal/l0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/l0<",
            "Ljava/lang/Long;",
            ">;",
            "Lkotlin/jvm/internal/l0<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/ZipKt$d;->a:Lokio/e;

    iput-object p2, p0, Lokio/internal/ZipKt$d;->b:Lkotlin/jvm/internal/l0;

    iput-object p3, p0, Lokio/internal/ZipKt$d;->c:Lkotlin/jvm/internal/l0;

    iput-object p4, p0, Lokio/internal/ZipKt$d;->d:Lkotlin/jvm/internal/l0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .registers 13

    const/16 v0, 0x5455

    if-ne p1, v0, :cond_82

    const-string p1, "bad zip: extended timestamp extra too short"

    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7c

    iget-object v2, p0, Lokio/internal/ZipKt$d;->a:Lokio/e;

    invoke-interface {v2}, Lokio/e;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    and-int/lit8 v6, v2, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_24

    const/4 v6, 0x1

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    :goto_25
    const/4 v7, 0x4

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_2a

    const/4 v4, 0x1

    :cond_2a
    iget-object v2, p0, Lokio/internal/ZipKt$d;->a:Lokio/e;

    if-eqz v3, :cond_30

    const-wide/16 v0, 0x5

    :cond_30
    const-wide/16 v7, 0x4

    if-eqz v6, :cond_35

    add-long/2addr v0, v7

    :cond_35
    if-eqz v4, :cond_38

    add-long/2addr v0, v7

    :cond_38
    cmp-long v5, p2, v0

    if-ltz v5, :cond_76

    const-wide/16 p1, 0x3e8

    if-eqz v3, :cond_4f

    iget-object p3, p0, Lokio/internal/ZipKt$d;->b:Lkotlin/jvm/internal/l0;

    invoke-interface {v2}, Lokio/e;->readIntLe()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p3, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    :cond_4f
    if-eqz v6, :cond_62

    iget-object p3, p0, Lokio/internal/ZipKt$d;->c:Lkotlin/jvm/internal/l0;

    iget-object v0, p0, Lokio/internal/ZipKt$d;->a:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readIntLe()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p3, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    :cond_62
    if-eqz v4, :cond_82

    iget-object p3, p0, Lokio/internal/ZipKt$d;->d:Lkotlin/jvm/internal/l0;

    iget-object v0, p0, Lokio/internal/ZipKt$d;->a:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readIntLe()I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p3, Lkotlin/jvm/internal/l0;->a:Ljava/lang/Object;

    goto :goto_82

    :cond_76
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_7c
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_82
    :goto_82
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipKt$d;->a(IJ)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
