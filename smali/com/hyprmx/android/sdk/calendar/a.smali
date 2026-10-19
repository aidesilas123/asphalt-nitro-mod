###### Class com.hyprmx.android.sdk.calendar.a (com.hyprmx.android.sdk.calendar.a)
.class public final Lcom/hyprmx/android/sdk/calendar/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/calendar/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 37

    new-instance v0, Lcom/hyprmx/android/sdk/calendar/a$a;

    invoke-direct {v0}, Lcom/hyprmx/android/sdk/calendar/a$a;-><init>()V

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSX"

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssX"

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    const-string v5, "yyyy-MM-dd\'T\'HH:mmX"

    const-string v6, "yyyy-MM-dd\'T\'HH:mmZ"

    const-string v7, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    const-string v8, "yyyy-MM-dd\'T\'HH:mm:ss"

    const-string v9, "yyyy-MM-dd\'T\'HH:mm"

    const-string v10, "yyyyMMdd\'T\'HH:mm:ss.SSSX"

    const-string v11, "yyyyMMdd\'T\'HH:mm:ss.SSSZ"

    const-string v12, "yyyyMMdd\'T\'HH:mm:ssX"

    const-string v13, "yyyyMMdd\'T\'HH:mm:ssZ"

    const-string v14, "yyyyMMdd\'T\'HH:mmX"

    const-string v15, "yyyyMMdd\'T\'HH:mmZ"

    const-string v16, "yyyyMMdd\'T\'HH:mm:ss.SSS"

    const-string v17, "yyyyMMdd\'T\'HH:mm:ss"

    const-string v18, "yyyyMMdd\'T\'HH:mm"

    const-string v19, "yyyy-MM-dd\'T\'HHmmss.SSSX"

    const-string v20, "yyyy-MM-dd\'T\'HHmmss.SSSZ"

    const-string v21, "yyyy-MM-dd\'T\'HHmmssX"

    const-string v22, "yyyy-MM-dd\'T\'HHmmssZ"

    const-string v23, "yyyy-MM-dd\'T\'HHmmX"

    const-string v24, "yyyy-MM-dd\'T\'HHmmZ"

    const-string v25, "yyyy-MM-dd\'T\'HHmmss.SSS"

    const-string v26, "yyyy-MM-dd\'T\'HHmmss"

    const-string v27, "yyyy-MM-dd\'T\'HHmm"

    const-string v28, "yyyyMMdd\'T\'HHmmss.SSSX"

    const-string v29, "yyyyMMdd\'T\'HHmmss.SSSZ"

    const-string v30, "yyyyMMdd\'T\'HHmmssX"

    const-string v31, "yyyyMMdd\'T\'HHmmssZ"

    const-string v32, "yyyyMMdd\'T\'HHmmX"

    const-string v33, "yyyyMMdd\'T\'HHmmZ"

    const-string v34, "yyyyMMdd\'T\'HHmmss.SSS"

    const-string v35, "yyyyMMdd\'T\'HHmmss"

    const-string v36, "yyyyMMdd\'T\'HHmm"

    filled-new-array/range {v1 .. v36}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/hyprmx/android/sdk/calendar/a;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "recurrence"

    const-string v3, "description"

    const-string v4, "calEventString"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "jsonString"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_14
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {v0, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "location"

    invoke-static {v0, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "summary"

    invoke-static {v0, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "start"

    invoke-static {v0, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "end"

    invoke-static {v0, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    const-string v0, "status"

    invoke-static {v0, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    const-string v0, "transparency"

    invoke-static {v0, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {v2, v6}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/api/data/f$a;->a(Ljava/lang/String;)Lcom/hyprmx/android/sdk/utility/m0;

    move-result-object v0

    instance-of v2, v0, Lcom/hyprmx/android/sdk/utility/m0$a;

    if-eqz v2, :cond_5f

    new-instance v0, Lcom/hyprmx/android/sdk/utility/m0$a;

    const-string v2, "Exception parsing repeat rule."

    invoke-direct {v0, v2, v5, v4}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    goto :goto_82

    :cond_5f
    const-string v2, "null cannot be cast to non-null type com.hyprmx.android.sdk.utility.Result.Success<com.hyprmx.android.sdk.api.data.CalendarRepeatRule>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/hyprmx/android/sdk/utility/m0$b;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/m0$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hyprmx/android/sdk/api/data/f;

    move-object v14, v0

    goto :goto_6d

    :cond_6c
    move-object v14, v4

    :goto_6d
    new-instance v0, Lcom/hyprmx/android/sdk/utility/m0$b;

    new-instance v2, Lcom/hyprmx/android/sdk/api/data/e;

    move-object v7, v2

    invoke-direct/range {v7 .. v14}, Lcom/hyprmx/android/sdk/api/data/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hyprmx/android/sdk/api/data/f;)V

    invoke-direct {v0, v2}, Lcom/hyprmx/android/sdk/utility/m0$b;-><init>(Ljava/lang/Object;)V
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_78} :catch_79

    goto :goto_82

    :catch_79
    move-exception v0

    new-instance v2, Lcom/hyprmx/android/sdk/utility/m0$a;

    const-string v6, "Exception parsing calendar event."

    invoke-direct {v2, v6, v5, v0}, Lcom/hyprmx/android/sdk/utility/m0$a;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    move-object v0, v2

    :goto_82
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    instance-of v6, v0, Lcom/hyprmx/android/sdk/utility/m0$a;

    if-nez v6, :cond_37a

    const-string v6, "null cannot be cast to non-null type com.hyprmx.android.sdk.utility.Result.Success<com.hyprmx.android.sdk.api.data.CalendarEvent>"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/hyprmx/android/sdk/utility/m0$b;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/utility/m0$b;->a:Ljava/lang/Object;

    check-cast v0, Lcom/hyprmx/android/sdk/api/data/e;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/api/data/e;->a:Ljava/lang/String;

    if-eqz v6, :cond_372

    iget-object v7, v0, Lcom/hyprmx/android/sdk/api/data/e;->d:Ljava/lang/String;

    if-eqz v7, :cond_372

    const-string v7, "title"

    invoke-virtual {v2, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/api/data/e;->d:Ljava/lang/String;

    const/4 v7, 0x1

    if-eqz v6, :cond_b1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_af

    goto :goto_b1

    :cond_af
    const/4 v6, 0x0

    goto :goto_b2

    :cond_b1
    :goto_b1
    const/4 v6, 0x1

    :goto_b2
    if-nez v6, :cond_36a

    iget-object v6, v0, Lcom/hyprmx/android/sdk/api/data/e;->d:Ljava/lang/String;

    invoke-static {v6}, Lcom/hyprmx/android/sdk/calendar/a$a;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_362

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "beginTime"

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/hyprmx/android/sdk/api/data/e;->e:Ljava/lang/String;

    if-eqz v6, :cond_d6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_d4

    goto :goto_d6

    :cond_d4
    const/4 v6, 0x0

    goto :goto_d7

    :cond_d6
    :goto_d6
    const/4 v6, 0x1

    :goto_d7
    if-nez v6, :cond_f7

    iget-object v6, v0, Lcom/hyprmx/android/sdk/api/data/e;->e:Ljava/lang/String;

    invoke-static {v6}, Lcom/hyprmx/android/sdk/calendar/a$a;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_ef

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "endTime"

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f7

    :cond_ef
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "calendar end time is malformed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f7
    :goto_f7
    iget-object v6, v0, Lcom/hyprmx/android/sdk/api/data/e;->b:Ljava/lang/String;

    if-eqz v6, :cond_100

    const-string v8, "eventLocation"

    invoke-virtual {v2, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_100
    iget-object v6, v0, Lcom/hyprmx/android/sdk/api/data/e;->c:Ljava/lang/String;

    if-eqz v6, :cond_107

    invoke-virtual {v2, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_107
    iget-object v3, v0, Lcom/hyprmx/android/sdk/api/data/e;->f:Ljava/lang/String;

    if-eqz v3, :cond_11a

    const-string v6, "transparent"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "availability"

    invoke-virtual {v2, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11a
    iget-object v0, v0, Lcom/hyprmx/android/sdk/api/data/e;->g:Lcom/hyprmx/android/sdk/api/data/f;

    if-eqz v0, :cond_361

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/hyprmx/android/sdk/api/data/f;->a:Ljava/lang/String;

    if-eqz v6, :cond_353

    iget-short v8, v0, Lcom/hyprmx/android/sdk/api/data/f;->b:S

    const/4 v9, -0x1

    if-lez v8, :cond_12d

    goto :goto_12e

    :cond_12d
    const/4 v8, -0x1

    :goto_12e
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x2f307f7f

    const-string v12, "INTERVAL="

    const/16 v13, 0x3b

    if-eq v10, v11, :cond_28f

    const v11, -0x2bc88576

    if-eq v10, v11, :cond_1de

    const v11, 0x5aede19

    if-eq v10, v11, :cond_1bb

    const v11, 0x49b5900d

    if-ne v10, v11, :cond_347

    const-string v10, "monthly"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_347

    const-string v6, "FREQ=MONTHLY;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v8, v9, :cond_16b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16b
    iget-object v14, v0, Lcom/hyprmx/android/sdk/api/data/f;->e:[S

    array-length v6, v14

    if-nez v6, :cond_172

    const/4 v6, 0x1

    goto :goto_173

    :cond_172
    const/4 v6, 0x0

    :goto_173
    xor-int/2addr v6, v7

    if-eqz v6, :cond_1b3

    array-length v6, v14

    if-nez v6, :cond_17a

    const/4 v5, 0x1

    :cond_17a
    if-nez v5, :cond_1ab

    new-instance v5, Lcom/hyprmx/android/sdk/calendar/b;

    invoke-direct {v5, v1}, Lcom/hyprmx/android/sdk/calendar/b;-><init>(Lcom/hyprmx/android/sdk/calendar/a;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1e

    const/16 v22, 0x0

    const-string v15, ","

    move-object/from16 v20, v5

    invoke-static/range {v14 .. v22}, Lkotlin/collections/k;->joinToString$default([SLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BYMONTHDAY="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2ee

    :cond_1ab
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "must have at least 1 day of the month"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid daysInMonth"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1bb
    const-string v5, "daily"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_347

    const-string v5, "FREQ=DAILY;"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v8, v9, :cond_2ee

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2ee

    :cond_1de
    const-string v10, "yearly"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_347

    const-string v6, "FREQ=YEARLY;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v8, v9, :cond_1ff

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1ff
    iget-object v14, v0, Lcom/hyprmx/android/sdk/api/data/f;->f:[S

    array-length v6, v14

    if-nez v6, :cond_206

    const/4 v6, 0x1

    goto :goto_207

    :cond_206
    const/4 v6, 0x0

    :goto_207
    xor-int/2addr v6, v7

    if-eqz v6, :cond_248

    array-length v6, v14

    if-nez v6, :cond_20f

    const/4 v6, 0x1

    goto :goto_210

    :cond_20f
    const/4 v6, 0x0

    :goto_210
    if-nez v6, :cond_240

    new-instance v6, Lcom/hyprmx/android/sdk/calendar/d;

    invoke-direct {v6, v1}, Lcom/hyprmx/android/sdk/calendar/d;-><init>(Lcom/hyprmx/android/sdk/calendar/a;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1e

    const/16 v22, 0x0

    const-string v15, ","

    move-object/from16 v20, v6

    invoke-static/range {v14 .. v22}, Lkotlin/collections/k;->joinToString$default([SLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "BYYEARDAY="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_248

    :cond_240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "must have at least 1 day of the year"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_248
    :goto_248
    iget-object v14, v0, Lcom/hyprmx/android/sdk/api/data/f;->g:[S

    array-length v6, v14

    if-nez v6, :cond_24f

    const/4 v6, 0x1

    goto :goto_250

    :cond_24f
    const/4 v6, 0x0

    :goto_250
    xor-int/2addr v6, v7

    if-eqz v6, :cond_2ee

    array-length v6, v14

    if-nez v6, :cond_257

    const/4 v5, 0x1

    :cond_257
    if-nez v5, :cond_287

    new-instance v5, Lcom/hyprmx/android/sdk/calendar/e;

    invoke-direct {v5, v1}, Lcom/hyprmx/android/sdk/calendar/e;-><init>(Lcom/hyprmx/android/sdk/calendar/a;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1e

    const/16 v22, 0x0

    const-string v15, ","

    move-object/from16 v20, v5

    invoke-static/range {v14 .. v22}, Lkotlin/collections/k;->joinToString$default([SLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BYMONTH="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2ee

    :cond_287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "must have at least 1 month of the year"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28f
    const-string v10, "weekly"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_347

    const-string v6, "FREQ=WEEKLY;"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eq v8, v9, :cond_2b0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b0
    iget-object v14, v0, Lcom/hyprmx/android/sdk/api/data/f;->d:[S

    array-length v6, v14

    if-nez v6, :cond_2b7

    const/4 v6, 0x1

    goto :goto_2b8

    :cond_2b7
    const/4 v6, 0x0

    :goto_2b8
    xor-int/2addr v6, v7

    if-eqz v6, :cond_33f

    array-length v6, v14

    if-nez v6, :cond_2bf

    const/4 v5, 0x1

    :cond_2bf
    if-nez v5, :cond_337

    new-instance v5, Lcom/hyprmx/android/sdk/calendar/c;

    invoke-direct {v5, v1}, Lcom/hyprmx/android/sdk/calendar/c;-><init>(Lcom/hyprmx/android/sdk/calendar/a;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x1e

    const/16 v22, 0x0

    const-string v15, ","

    move-object/from16 v20, v5

    invoke-static/range {v14 .. v22}, Lkotlin/collections/k;->joinToString$default([SLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "BYDAY="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2ee
    :goto_2ee
    iget-object v0, v0, Lcom/hyprmx/android/sdk/api/data/f;->c:Ljava/lang/String;

    if-eqz v0, :cond_353

    invoke-static {v0}, Lcom/hyprmx/android/sdk/calendar/a$a;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :try_start_2f9
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v5, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4
    :try_end_30f
    .catch Ljava/lang/Exception; {:try_start_2f9 .. :try_end_30f} :catch_310

    goto :goto_318

    :catch_310
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    :goto_318
    if-eqz v4, :cond_32f

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "UNTIL="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_353

    :cond_32f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "calendar recurrence expiration time is malformed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_337
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "must have at least 1 day of the week"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "invalid daysInWeek"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "unsupported frequency: "

    invoke-virtual {v2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_353
    :goto_353
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "rule.toString()"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rrule"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_361
    return-object v2

    :cond_362
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "calendar start time is malformed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "calendar start is null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "missing description or start fields"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37a
    const-string v0, "Unable to parse calendar event"

    invoke-static {v0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9

    const-string v0, "calEventString"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_11
    invoke-virtual {p0, p2}, Lcom/hyprmx/android/sdk/calendar/a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "vnd.android.cursor.item/event"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "Intent(Intent.ACTION_INS\u2026tType(CALENDAR_MIME_TYPE)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_4d

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_2f

    :cond_4d
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_5b

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2f

    :cond_5b
    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2f

    :cond_66
    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6e
    .catch Landroid/content/ActivityNotFoundException; {:try_start_11 .. :try_end_6e} :catch_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_6e} :catch_73
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_6e} :catch_70

    const/4 v0, 0x1

    goto :goto_7b

    :catch_70
    const-string p1, "Error creating calendar event."

    goto :goto_78

    :catch_73
    const-string p1, "Invalid params for calendar event."

    goto :goto_78

    :catch_76
    const-string p1, "Calendar app not installed."

    :goto_78
    invoke-static {p1}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    :goto_7b
    return v0
.end method

###### Class com.hyprmx.android.sdk.calendar.a.C0282a (com.hyprmx.android.sdk.calendar.a$a)
.class public final Lcom/hyprmx/android/sdk/calendar/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/calendar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)Ljava/util/Date;
    .registers 7

    sget-object v0, Lcom/hyprmx/android/sdk/calendar/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_14
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v4, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_28} :catch_2c
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_28} :catch_2c

    if-eqz v2, :cond_8

    move-object v1, v3

    goto :goto_2e

    :catch_2c
    nop

    goto :goto_8

    :cond_2e
    :goto_2e
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v2, :cond_3b

    const-string v1, "No parser for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_49

    :cond_3b
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " parsed with "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/hyprmx/android/sdk/utility/HyprMXLog;->d(Ljava/lang/String;)V

    return-object v2
.end method
