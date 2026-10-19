###### Class okio.internal.ZipKt.c (okio.internal.ZipKt$c)
.class final Lokio/internal/ZipKt$c;
.super Lkotlin/jvm/internal/t;
.source "zip.kt"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/ZipKt;->readEntry(Lokio/e;)Lokio/internal/c;
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
.field final synthetic a:Lkotlin/jvm/internal/h0;

.field final synthetic b:J

.field final synthetic c:Lkotlin/jvm/internal/k0;

.field final synthetic d:Lokio/e;

.field final synthetic e:Lkotlin/jvm/internal/k0;

.field final synthetic f:Lkotlin/jvm/internal/k0;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/h0;JLkotlin/jvm/internal/k0;Lokio/e;Lkotlin/jvm/internal/k0;Lkotlin/jvm/internal/k0;)V
    .registers 8

    iput-object p1, p0, Lokio/internal/ZipKt$c;->a:Lkotlin/jvm/internal/h0;

    iput-wide p2, p0, Lokio/internal/ZipKt$c;->b:J

    iput-object p4, p0, Lokio/internal/ZipKt$c;->c:Lkotlin/jvm/internal/k0;

    iput-object p5, p0, Lokio/internal/ZipKt$c;->d:Lokio/e;

    iput-object p6, p0, Lokio/internal/ZipKt$c;->e:Lkotlin/jvm/internal/k0;

    iput-object p7, p0, Lokio/internal/ZipKt$c;->f:Lkotlin/jvm/internal/k0;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(IJ)V
    .registers 9

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5b

    iget-object p1, p0, Lokio/internal/ZipKt$c;->a:Lkotlin/jvm/internal/h0;

    iget-boolean v1, p1, Lkotlin/jvm/internal/h0;->a:Z

    if-nez v1, :cond_53

    iput-boolean v0, p1, Lkotlin/jvm/internal/h0;->a:Z

    iget-wide v0, p0, Lokio/internal/ZipKt$c;->b:J

    cmp-long p1, p2, v0

    if-ltz p1, :cond_4b

    iget-object p1, p0, Lokio/internal/ZipKt$c;->c:Lkotlin/jvm/internal/k0;

    iget-wide p2, p1, Lkotlin/jvm/internal/k0;->a:J

    const-wide v0, 0xffffffffL

    cmp-long v2, p2, v0

    if-nez v2, :cond_24

    iget-object p2, p0, Lokio/internal/ZipKt$c;->d:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readLongLe()J

    move-result-wide p2

    :cond_24
    iput-wide p2, p1, Lkotlin/jvm/internal/k0;->a:J

    iget-object p1, p0, Lokio/internal/ZipKt$c;->e:Lkotlin/jvm/internal/k0;

    iget-wide p2, p1, Lkotlin/jvm/internal/k0;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v0

    if-nez v4, :cond_37

    iget-object p2, p0, Lokio/internal/ZipKt$c;->d:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readLongLe()J

    move-result-wide p2

    goto :goto_38

    :cond_37
    move-wide p2, v2

    :goto_38
    iput-wide p2, p1, Lkotlin/jvm/internal/k0;->a:J

    iget-object p1, p0, Lokio/internal/ZipKt$c;->f:Lkotlin/jvm/internal/k0;

    iget-wide p2, p1, Lkotlin/jvm/internal/k0;->a:J

    cmp-long v4, p2, v0

    if-nez v4, :cond_48

    iget-object p2, p0, Lokio/internal/ZipKt$c;->d:Lokio/e;

    invoke-interface {p2}, Lokio/e;->readLongLe()J

    move-result-wide v2

    :cond_48
    iput-wide v2, p1, Lkotlin/jvm/internal/k0;->a:J

    goto :goto_5b

    :cond_4b
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra too short"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_53
    new-instance p1, Ljava/io/IOException;

    const-string p2, "bad zip: zip64 extra repeated"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    :goto_5b
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

    invoke-virtual {p0, p1, v0, v1}, Lokio/internal/ZipKt$c;->a(IJ)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
