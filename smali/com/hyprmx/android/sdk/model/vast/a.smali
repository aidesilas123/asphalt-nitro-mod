###### Class com.hyprmx.android.sdk.model.vast.a (com.hyprmx.android.sdk.model.vast.a)
.class public final Lcom/hyprmx/android/sdk/model/vast/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/model/vast/a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/hyprmx/android/sdk/model/vast/e;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/i;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/hyprmx/android/sdk/model/vast/e;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/c;",
            ">;",
            "Lcom/hyprmx/android/sdk/model/vast/e;",
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/i;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hyprmx/android/sdk/model/vast/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "impressions"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linear"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewableImpressions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adVerifications"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/model/vast/a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/model/vast/a;->b:Lcom/hyprmx/android/sdk/model/vast/e;

    iput-object p3, p0, Lcom/hyprmx/android/sdk/model/vast/a;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/hyprmx/android/sdk/model/vast/a;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/hyprmx/android/sdk/model/vast/a;->b:Lcom/hyprmx/android/sdk/model/vast/e;

    iget-object v0, v0, Lcom/hyprmx/android/sdk/model/vast/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/hyprmx/android/sdk/model/vast/h;

    iget-object v4, v3, Lcom/hyprmx/android/sdk/model/vast/h;->a:Ljava/lang/String;

    const-string v5, "ClickThrough"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2b

    iget-object v3, v3, Lcom/hyprmx/android/sdk/model/vast/h;->b:Ljava/lang/String;

    invoke-static {v3}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v5

    if-eqz v3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v5, 0x0

    :goto_2c
    if-eqz v5, :cond_8

    goto :goto_30

    :cond_2f
    move-object v1, v2

    :goto_30
    check-cast v1, Lcom/hyprmx/android/sdk/model/vast/h;

    if-eqz v1, :cond_36

    iget-object v2, v1, Lcom/hyprmx/android/sdk/model/vast/h;->b:Ljava/lang/String;

    :cond_36
    return-object v2
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/model/vast/a;->b:Lcom/hyprmx/android/sdk/model/vast/e;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/model/vast/e;->d:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hyprmx/android/sdk/model/vast/h;

    iget-object v5, v4, Lcom/hyprmx/android/sdk/model/vast/h;->a:Ljava/lang/String;

    const-string v6, "ClickTracking"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_34

    iget-object v4, v4, Lcom/hyprmx/android/sdk/model/vast/h;->b:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_34

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    if-eqz v6, :cond_12

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_51

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyprmx/android/sdk/model/vast/h;

    iget-object v2, v2, Lcom/hyprmx/android/sdk/model/vast/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3f

    :cond_51
    return-object v0
.end method

.method public final c()Ljava/util/HashMap;
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/model/vast/a;->b:Lcom/hyprmx/android/sdk/model/vast/e;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/model/vast/e;->c:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hyprmx/android/sdk/model/vast/g;

    iget-object v5, v4, Lcom/hyprmx/android/sdk/model/vast/g;->b:Ljava/lang/String;

    const-string v6, "progress"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_34

    iget-object v4, v4, Lcom/hyprmx/android/sdk/model/vast/g;->a:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_34

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    if-eqz v6, :cond_12

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyprmx/android/sdk/model/vast/g;

    iget-object v3, v2, Lcom/hyprmx/android/sdk/model/vast/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_5a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_5a
    invoke-static {v3}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Lcom/hyprmx/android/sdk/model/vast/g;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/hyprmx/android/sdk/model/vast/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_69
    return-object v0
.end method

.method public final d()Ljava/util/ArrayList;
    .registers 4

    iget-object v0, p0, Lcom/hyprmx/android/sdk/model/vast/a;->a:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/p;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyprmx/android/sdk/model/vast/c;

    iget-object v2, v2, Lcom/hyprmx/android/sdk/model/vast/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_23
    return-object v1
.end method

.method public final e()Ljava/util/ArrayList;
    .registers 10

    iget-object v0, p0, Lcom/hyprmx/android/sdk/model/vast/a;->d:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/hyprmx/android/sdk/model/vast/b;

    iget-object v3, v3, Lcom/hyprmx/android/sdk/model/vast/b;->b:Ljava/util/List;

    instance-of v4, v3, Ljava/util/Collection;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_27

    goto :goto_58

    :cond_27
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hyprmx/android/sdk/model/vast/d;

    iget-object v7, v4, Lcom/hyprmx/android/sdk/model/vast/d;->a:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_41

    const/4 v7, 0x1

    goto :goto_42

    :cond_41
    const/4 v7, 0x0

    :goto_42
    if-eqz v7, :cond_54

    iget-object v7, v4, Lcom/hyprmx/android/sdk/model/vast/d;->b:Ljava/lang/String;

    const-string v8, "omid"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_54

    iget-boolean v4, v4, Lcom/hyprmx/android/sdk/model/vast/d;->c:Z

    if-eqz v4, :cond_54

    const/4 v4, 0x1

    goto :goto_55

    :cond_54
    const/4 v4, 0x0

    :goto_55
    if-eqz v4, :cond_2b

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v5, 0x0

    :goto_59
    if-eqz v5, :cond_b

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_5f
    return-object v1
.end method

.method public final f()Ljava/util/HashMap;
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/model/vast/a;->b:Lcom/hyprmx/android/sdk/model/vast/e;

    iget-object v1, v1, Lcom/hyprmx/android/sdk/model/vast/e;->c:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/hyprmx/android/sdk/model/vast/g;

    iget-object v5, v4, Lcom/hyprmx/android/sdk/model/vast/g;->b:Ljava/lang/String;

    const-string v6, "progress"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_34

    iget-object v4, v4, Lcom/hyprmx/android/sdk/model/vast/g;->a:Ljava/lang/String;

    invoke-static {v4}, Lkotlin/text/g;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_34

    goto :goto_35

    :cond_34
    const/4 v6, 0x0

    :goto_35
    if-eqz v6, :cond_12

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyprmx/android/sdk/model/vast/g;

    iget-wide v3, v2, Lcom/hyprmx/android/sdk/model/vast/g;->c:J

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_62

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_62
    invoke-static {v5}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    iget-object v2, v2, Lcom/hyprmx/android/sdk/model/vast/g;->a:Ljava/lang/String;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_73
    return-object v0
.end method

.method public final g()Ljava/util/HashMap;
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/hyprmx/android/sdk/model/vast/a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hyprmx/android/sdk/model/vast/i;

    iget-object v3, v2, Lcom/hyprmx/android/sdk/model/vast/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_26

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_26
    invoke-static {v3}, Lkotlin/collections/p;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v2, Lcom/hyprmx/android/sdk/model/vast/i;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/hyprmx/android/sdk/model/vast/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_35
    return-object v0
.end method

###### Class com.hyprmx.android.sdk.model.vast.a.C0291a (com.hyprmx.android.sdk.model.vast.a$a)
.class public final Lcom/hyprmx/android/sdk/model/vast/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/model/vast/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/hyprmx/android/sdk/model/vast/a;
    .registers 31

    const-string v0, "Ad"

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/hyprmx/android/sdk/model/vast/a;

    const-string v2, "Impressions"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    goto :goto_1f

    :cond_1e
    const/4 v5, -0x1

    :goto_1f
    const-string v7, "value"

    if-ltz v5, :cond_41

    const/4 v8, 0x0

    :goto_24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    new-instance v10, Lcom/hyprmx/android/sdk/model/vast/c;

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "item.getString(FIELD_URL)"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v10, v9}, Lcom/hyprmx/android/sdk/model/vast/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v8, v5, :cond_41

    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_41
    const-string v2, "Linear"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    const-string v5, "offset"

    const-string v8, "item.optString(FIELD_EVENT)"

    const-string v9, "event"

    const-string v10, "item.optString(FIELD_VALUE)"

    const-string v11, "item.optString(FIELD_TYPE)"

    const-string v12, "name"

    const-string v13, "Trackings"

    const-string v14, "item.optString(FIELD_URL)"

    if-eqz v2, :cond_144

    new-instance v23, Lcom/hyprmx/android/sdk/model/vast/e;

    const-string v15, "Duration"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    const-string v15, "skipoffset"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    const-string v15, "MediaFile"

    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/json/JSONObject;

    if-eqz v15, :cond_9d

    new-instance v4, Lcom/hyprmx/android/sdk/model/vast/f;

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v1

    const-string v1, "it.optString(FIELD_URL)"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {v15, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v3

    const-string v3, "it.optString(FIELD_TYPE)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "width"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    const-string v3, "height"

    invoke-virtual {v15, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    invoke-direct {v4, v6, v1}, Lcom/hyprmx/android/sdk/model/vast/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v20, v4

    goto :goto_a8

    :cond_9d
    move-object/from16 v24, v1

    move-object/from16 v25, v3

    new-instance v1, Lcom/hyprmx/android/sdk/model/vast/f;

    invoke-direct {v1}, Lcom/hyprmx/android/sdk/model/vast/f;-><init>()V

    move-object/from16 v20, v1

    :goto_a8
    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_bb

    :cond_ba
    const/4 v4, -0x1

    :goto_bb
    if-ltz v4, :cond_f8

    const/4 v6, 0x0

    :goto_be
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v21, v1

    new-instance v1, Lcom/hyprmx/android/sdk/model/vast/g;

    move-object/from16 v26, v13

    invoke-virtual {v15, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v27, v10

    invoke-virtual {v15, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    invoke-virtual {v15, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v1, v8, v9, v13, v10}, Lcom/hyprmx/android/sdk/model/vast/g;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v6, v4, :cond_100

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, v21

    move-object/from16 v13, v26

    move-object/from16 v10, v27

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    goto :goto_be

    :cond_f8
    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v27, v10

    move-object/from16 v26, v13

    :cond_100
    const-string v1, "VideoClicks"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_114

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_115

    :cond_114
    const/4 v4, -0x1

    :goto_115
    if-ltz v4, :cond_13a

    const/4 v6, 0x0

    :goto_118
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/hyprmx/android/sdk/model/vast/h;

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v10, v8}, Lcom/hyprmx/android/sdk/model/vast/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v6, v4, :cond_13a

    add-int/lit8 v6, v6, 0x1

    goto :goto_118

    :cond_13a
    move-object/from16 v15, v23

    move-object/from16 v21, v3

    move-object/from16 v22, v2

    invoke-direct/range {v15 .. v22}, Lcom/hyprmx/android/sdk/model/vast/e;-><init>(JJLcom/hyprmx/android/sdk/model/vast/f;Ljava/util/List;Ljava/util/List;)V

    goto :goto_155

    :cond_144
    move-object/from16 v24, v1

    move-object/from16 v25, v3

    move-object/from16 v28, v8

    move-object/from16 v29, v9

    move-object/from16 v27, v10

    move-object/from16 v26, v13

    new-instance v23, Lcom/hyprmx/android/sdk/model/vast/e;

    invoke-direct/range {v23 .. v23}, Lcom/hyprmx/android/sdk/model/vast/e;-><init>()V

    :goto_155
    move-object/from16 v1, v23

    const-string v2, "ViewableImpression"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_16b

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_16c

    :cond_16b
    const/4 v4, -0x1

    :goto_16c
    if-ltz v4, :cond_191

    const/4 v6, 0x0

    :goto_16f
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/hyprmx/android/sdk/model/vast/i;

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v9, v10, v8}, Lcom/hyprmx/android/sdk/model/vast/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v6, v4, :cond_191

    add-int/lit8 v6, v6, 0x1

    goto :goto_16f

    :cond_191
    const-string v2, "AdVerifications"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_1a5

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1a6

    :cond_1a5
    const/4 v4, -0x1

    :goto_1a6
    if-ltz v4, :cond_2a3

    const/4 v6, 0x0

    :goto_1a9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    new-instance v9, Lcom/hyprmx/android/sdk/model/vast/b;

    const-string v10, "vendor"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "item.optString(FIELD_VENDOR)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "JavaScriptResources"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_1d1

    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    goto :goto_1d2

    :cond_1d1
    const/4 v13, -0x1

    :goto_1d2
    if-ltz v13, :cond_215

    const/4 v15, 0x0

    :goto_1d5
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object/from16 v16, v0

    invoke-virtual {v11, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    move-object/from16 v17, v11

    new-instance v11, Lcom/hyprmx/android/sdk/model/vast/d;

    move-object/from16 v18, v1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v19, v14

    const-string v14, "apiFramework"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v3

    const-string v3, "item.optString(FIELD_API_FRAMEWORK)"

    invoke-static {v14, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "browserOptional"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v11, v1, v14, v0}, Lcom/hyprmx/android/sdk/model/vast/d;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v15, v13, :cond_21d

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v16

    move-object/from16 v11, v17

    move-object/from16 v1, v18

    move-object/from16 v14, v19

    move-object/from16 v3, v20

    goto :goto_1d5

    :cond_215
    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v20, v3

    move-object/from16 v19, v14

    :cond_21d
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_231

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_232

    :cond_231
    const/4 v11, -0x1

    :goto_232
    if-ltz v11, :cond_271

    const/4 v13, 0x0

    :goto_235
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    new-instance v15, Lcom/hyprmx/android/sdk/model/vast/g;

    move-object/from16 v26, v0

    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v21, v4

    move-object/from16 v1, v29

    invoke-virtual {v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, v28

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v22, v2

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v15, v1, v2, v0, v4}, Lcom/hyprmx/android/sdk/model/vast/g;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eq v13, v11, :cond_277

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v17

    move/from16 v4, v21

    move-object/from16 v2, v22

    move-object/from16 v0, v26

    goto :goto_235

    :cond_271
    move-object/from16 v26, v0

    move-object/from16 v22, v2

    move/from16 v21, v4

    :cond_277
    const-string v0, "VerificationParameters"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_284

    invoke-static {v7, v0}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_285

    :cond_284
    const/4 v0, 0x0

    :goto_285
    invoke-direct {v9, v10, v12, v3, v0}, Lcom/hyprmx/android/sdk/model/vast/b;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v4, v21

    if-eq v6, v4, :cond_29e

    add-int/lit8 v6, v6, 0x1

    move-object v2, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v14, v19

    move-object/from16 v3, v20

    goto/16 :goto_1a9

    :cond_29e
    move-object/from16 v4, v18

    move-object/from16 v3, v20

    goto :goto_2a5

    :cond_2a3
    move-object v0, v2

    move-object v4, v1

    :goto_2a5
    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v1, v2, v4, v3, v0}, Lcom/hyprmx/android/sdk/model/vast/a;-><init>(Ljava/util/List;Lcom/hyprmx/android/sdk/model/vast/e;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
