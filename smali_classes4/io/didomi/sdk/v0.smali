###### Class io.didomi.drawable.C1917v0 (io.didomi.sdk.v0)
.class public final Lio/didomi/sdk/v0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\'\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\rJK\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u00062\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0012\u001a\u00020\u00062\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0014J\r\u0010\t\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\t\u0010\u0016J\r\u0010\u0017\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0019\u0010\u001a\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\r\u0010\u001d\u001a\u00020\u001c\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010\u001d\u001a\u00020\u001f2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u001d\u0010 J\u0019\u0010\t\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\t\u0010!J\u0015\u0010\t\u001a\u00020\u00082\u0006\u0010\"\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010#J\u0015\u0010\t\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\t\u0010%J\u0015\u0010\u0017\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010%J3\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010&\u001a\u00020\u00062\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0002\u0010(\u001a\u00020\u001f\u00a2\u0006\u0004\u0008\t\u0010)J\u001d\u0010\u0017\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0017\u0010\nR*\u00101\u001a\u0004\u0018\u00010*8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0017\u0010+\u0012\u0004\u00080\u0010\u0003\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/\u00a8\u00062"
    }
    d2 = {
        "Lio/didomi/sdk/v0;",
        "",
        "<init>",
        "()V",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "",
        "durationInSeconds",
        "",
        "a",
        "(Lio/didomi/sdk/v3;J)Ljava/lang/String;",
        "unit1Label",
        "unit2Label",
        "(Lio/didomi/sdk/v3;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        "biggerUnitCount",
        "biggerUnitKey",
        "smallerUnit1Count",
        "smallerUnit1Key",
        "smallerUnit2Count",
        "smallerUnit2Key",
        "(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;",
        "Ljava/util/Date;",
        "()Ljava/util/Date;",
        "b",
        "()J",
        "date",
        "d",
        "(Ljava/util/Date;)Ljava/lang/String;",
        "Ljava/text/SimpleDateFormat;",
        "c",
        "()Ljava/text/SimpleDateFormat;",
        "",
        "(Ljava/util/Date;)Z",
        "(Ljava/lang/String;)Ljava/util/Date;",
        "timeInMs",
        "(J)Ljava/lang/String;",
        "",
        "(Ljava/util/Date;)I",
        "unitCount",
        "unitKey",
        "formatBigNumber",
        "(Lio/didomi/sdk/v3;JLjava/lang/String;Z)Ljava/lang/String;",
        "Ljava/util/Calendar;",
        "Ljava/util/Calendar;",
        "getCalendar",
        "()Ljava/util/Calendar;",
        "setCalendar",
        "(Ljava/util/Calendar;)V",
        "getCalendar$annotations",
        "calendar",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final a:Lio/didomi/sdk/v0;

.field private static b:Ljava/util/Calendar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lio/didomi/sdk/v0;

    invoke-direct {v0}, Lio/didomi/sdk/v0;-><init>()V

    sput-object v0, Lio/didomi/sdk/v0;->a:Lio/didomi/sdk/v0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/didomi/sdk/v0;Lio/didomi/sdk/v3;JLjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .registers 14

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_5

    const/4 p4, 0x0

    :cond_5
    move-object v4, p4

    and-int/lit8 p4, p6, 0x8

    if-eqz p4, :cond_d

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_e

    :cond_d
    move v5, p5

    :goto_e
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final a(Lio/didomi/sdk/v3;J)Ljava/lang/String;
    .registers 26

    const v0, 0x1e13380

    int-to-long v1, v0

    div-long v3, p2, v1

    long-to-int v4, v3

    rem-long v1, p2, v1

    long-to-int v2, v1

    if-nez v2, :cond_20

    if-lez v4, :cond_20

    int-to-long v7, v4

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-string v9, "year"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v15}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    const v1, 0x1da9c00

    if-le v2, v1, :cond_39

    add-int/lit8 v4, v4, 0x1

    int-to-long v7, v4

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-string v9, "year"

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v15}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    rem-int v0, v2, v0

    int-to-long v0, v0

    const-wide/32 v5, 0x278d00

    div-long/2addr v0, v5

    const-wide/16 v7, 0xc

    const-wide/16 v9, 0x0

    cmp-long v3, v0, v7

    if-nez v3, :cond_4b

    add-int/lit8 v4, v4, 0x1

    move-wide v0, v9

    :cond_4b
    int-to-long v7, v2

    rem-long/2addr v7, v5

    const v3, 0x15180

    int-to-long v5, v3

    div-long v5, v7, v5

    if-lez v4, :cond_69

    int-to-long v13, v4

    const-string v15, "year"

    const-string v18, "month"

    const-string v21, "day"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide/from16 v16, v0

    move-wide/from16 v19, v5

    invoke-direct/range {v11 .. v21}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_69
    rem-int v3, v2, v3

    div-int/lit16 v3, v3, 0xe10

    int-to-long v3, v3

    cmp-long v7, v0, v9

    if-lez v7, :cond_86

    const-string v15, "month"

    const-string v18, "day"

    const-string v21, "hour"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v13, v0

    move-wide/from16 v16, v5

    move-wide/from16 v19, v3

    invoke-direct/range {v11 .. v21}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_86
    rem-int/lit16 v0, v2, 0xe10

    div-int/lit8 v0, v0, 0x3c

    cmp-long v1, v5, v9

    if-lez v1, :cond_a3

    int-to-long v0, v0

    const-string v15, "day"

    const-string v18, "hour"

    const-string v21, "minute"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v13, v5

    move-wide/from16 v16, v3

    move-wide/from16 v19, v0

    invoke-direct/range {v11 .. v21}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a3
    rem-int/lit8 v2, v2, 0x3c

    cmp-long v1, v3, v9

    if-lez v1, :cond_bf

    int-to-long v0, v0

    int-to-long v5, v2

    const-string v15, "hour"

    const-string v18, "minute"

    const-string v21, "second"

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-wide v13, v3

    move-wide/from16 v16, v0

    move-wide/from16 v19, v5

    invoke-direct/range {v11 .. v21}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_bf
    if-lez v0, :cond_d3

    int-to-long v3, v0

    int-to-long v6, v2

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-string v5, "minute"

    const-string v8, "second"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v11}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e2

    :cond_d3
    int-to-long v3, v2

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v5, "second"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v8}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v0;Lio/didomi/sdk/v3;JLjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_e2
    return-object v0
.end method

.method private final a(Lio/didomi/sdk/v3;JLjava/lang/String;JLjava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .registers 22

    move-object v8, p0

    move-object v9, p1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v7}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v0;Lio/didomi/sdk/v3;JLjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-wide/16 v0, 0x0

    cmp-long v2, p5, v0

    if-lez v2, :cond_27

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p5

    move-object/from16 v4, p7

    invoke-static/range {v0 .. v7}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v0;Lio/didomi/sdk/v3;JLjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v10, v0}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    cmp-long v2, p8, v0

    if-lez v2, :cond_3e

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p8

    move-object/from16 v4, p10

    invoke-static/range {v0 .. v7}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v0;Lio/didomi/sdk/v3;JLjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v10, v0}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3e
    return-object v10
.end method

.method private final a(Lio/didomi/sdk/v3;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    sget-object v2, Lio/didomi/sdk/W5;->a:Lio/didomi/sdk/W5;

    const-string v0, "{unit1}"

    invoke-static {v0, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const-string v0, "{unit2}"

    invoke-static {v0, p3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p3

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    invoke-static {v0}, Lkotlin/collections/d0;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v1, "composed_duration"

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/util/Date;)I
    .registers 6

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/v0;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public final a(J)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " GMT"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lio/didomi/sdk/v3;JLjava/lang/String;Z)Ljava/lang/String;
    .registers 16

    const-string v0, "languagesHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p4, :cond_c

    invoke-direct {p0, p1, p2, p3}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    const-wide/16 v0, 0x1

    const-string v2, "format(...)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, p2, v0

    if-nez v5, :cond_35

    sget-object p2, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p4, p2, v3

    invoke-static {p2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "%s_singular"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_35
    if-eqz p5, :cond_49

    new-instance p5, Ljava/util/Locale;

    invoke-virtual {p1}, Lio/didomi/sdk/v3;->e()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {p5}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object p5

    invoke-virtual {p5, p2, p3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_4d

    :cond_49
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    :goto_4d
    sget-object p3, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    new-array p3, v4, [Ljava/lang/Object;

    aput-object p4, p3, v3

    invoke-static {p3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    const-string p4, "%s_plural"

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lio/didomi/sdk/W5;->a:Lio/didomi/sdk/W5;

    const-string p3, "{nb}"

    invoke-static {p3, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    invoke-static {p2}, Lkotlin/collections/d0;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p1

    invoke-static/range {v3 .. v9}, Lio/didomi/sdk/v3;->a(Lio/didomi/sdk/v3;Ljava/lang/String;Lio/didomi/sdk/W5;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a()Ljava/util/Date;
    .registers 3

    sget-object v0, Lio/didomi/sdk/v0;->b:Ljava/util/Calendar;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    const-string v1, "calendar ?: Calendar.getInstance()).time"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/Date;
    .registers 5

    if-nez p1, :cond_3

    goto :goto_1a

    :cond_3
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :try_start_15
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_19
    .catch Ljava/text/ParseException; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    :goto_1a
    const/4 p1, 0x0

    :goto_1b
    return-object p1
.end method

.method public final b(Ljava/util/Date;)I
    .registers 6

    const-string v0, "date"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/v0;->b()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 p1, 0x3e8

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int p1, v0

    return p1
.end method

.method public final b()J
    .registers 3

    sget-object v0, Lio/didomi/sdk/v0;->b:Ljava/util/Calendar;

    if-nez v0, :cond_8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    :cond_8
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Lio/didomi/sdk/v3;J)Ljava/lang/String;
    .registers 14

    const-string v0, "languagesHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v8}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v0;Lio/didomi/sdk/v3;JLjava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3c

    cmp-long v3, p2, v1

    if-gez v3, :cond_18

    return-object v0

    :cond_18
    const/4 v9, 0x1

    const-string v8, "second"

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v4 .. v9}, Lio/didomi/sdk/v0;->a(Lio/didomi/sdk/v3;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c()Ljava/text/SimpleDateFormat;
    .registers 4

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public final c(Ljava/util/Date;)Z
    .registers 6

    if-nez p1, :cond_3

    goto :goto_11

    :cond_3
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lio/didomi/sdk/v0;->b()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x0

    :goto_12
    return p1
.end method

.method public final d(Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p0}, Lio/didomi/sdk/v0;->c()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_c
    return-object p1
.end method
