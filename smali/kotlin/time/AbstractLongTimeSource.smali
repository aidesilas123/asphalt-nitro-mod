###### Class kotlin.time.AbstractLongTimeSource (kotlin.time.AbstractLongTimeSource)
.class public abstract Lkotlin/time/AbstractLongTimeSource;
.super Ljava/lang/Object;
.source "TimeSources.kt"

# interfaces
.implements Lkotlin/time/TimeSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/AbstractLongTimeSource$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001:\u0001\u0011B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\r\u001a\u00020\u0008H\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H$R\u0014\u0010\u0002\u001a\u00020\u0003X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lkotlin/time/AbstractLongTimeSource;",
        "Lkotlin/time/TimeSource$WithComparableMarks;",
        "unit",
        "Lkotlin/time/DurationUnit;",
        "(Lkotlin/time/DurationUnit;)V",
        "getUnit",
        "()Lkotlin/time/DurationUnit;",
        "zero",
        "",
        "getZero",
        "()J",
        "zero$delegate",
        "Lkotlin/Lazy;",
        "adjustedRead",
        "markNow",
        "Lkotlin/time/ComparableTimeMark;",
        "read",
        "LongTimeMark",
        "kotlin-stdlib"
    }
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lkotlin/time/DurationUnit;

.field private final b:Lkotlin/i;


# direct methods
.method public static final synthetic access$adjustedRead(Lkotlin/time/AbstractLongTimeSource;)J
    .registers 3

    invoke-direct {p0}, Lkotlin/time/AbstractLongTimeSource;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private final b()J
    .registers 5

    invoke-virtual {p0}, Lkotlin/time/AbstractLongTimeSource;->f()J

    move-result-wide v0

    invoke-direct {p0}, Lkotlin/time/AbstractLongTimeSource;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private final d()J
    .registers 3

    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource;->b:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic a()Lkotlin/time/TimeMark;
    .registers 2

    invoke-virtual {p0}, Lkotlin/time/AbstractLongTimeSource;->e()Lkotlin/time/ComparableTimeMark;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Lkotlin/time/DurationUnit;
    .registers 2

    iget-object v0, p0, Lkotlin/time/AbstractLongTimeSource;->a:Lkotlin/time/DurationUnit;

    return-object v0
.end method

.method public e()Lkotlin/time/ComparableTimeMark;
    .registers 9

    new-instance v7, Lkotlin/time/AbstractLongTimeSource$a;

    invoke-direct {p0}, Lkotlin/time/AbstractLongTimeSource;->b()J

    move-result-wide v1

    sget-object v0, Lkotlin/time/Duration;->a:Lkotlin/time/Duration$Companion;

    invoke-virtual {v0}, Lkotlin/time/Duration$Companion;->c()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lkotlin/time/AbstractLongTimeSource$a;-><init>(JLkotlin/time/AbstractLongTimeSource;JLkotlin/jvm/internal/n;)V

    return-object v7
.end method

.method protected abstract f()J
.end method
