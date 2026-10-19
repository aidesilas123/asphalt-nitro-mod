###### Class com.hyprmx.android.sdk.footer.a (com.hyprmx.android.sdk.footer.a)
.class public final Lcom/hyprmx/android/sdk/footer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hyprmx/android/sdk/footer/a$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/hyprmx/android/sdk/footer/a;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:I

.field public final d:Lcom/hyprmx/android/sdk/footer/e;

.field public final e:Lcom/hyprmx/android/sdk/footer/e;

.field public final f:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    new-instance v8, Lcom/hyprmx/android/sdk/footer/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x1f

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/hyprmx/android/sdk/footer/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/e;Lcom/hyprmx/android/sdk/footer/e;ZI)V

    sput-object v8, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/e;Lcom/hyprmx/android/sdk/footer/e;Z)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hyprmx/android/sdk/footer/a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hyprmx/android/sdk/footer/a;->b:Ljava/lang/String;

    iput p3, p0, Lcom/hyprmx/android/sdk/footer/a;->c:I

    iput-object p4, p0, Lcom/hyprmx/android/sdk/footer/a;->d:Lcom/hyprmx/android/sdk/footer/e;

    iput-object p5, p0, Lcom/hyprmx/android/sdk/footer/a;->e:Lcom/hyprmx/android/sdk/footer/e;

    iput-boolean p6, p0, Lcom/hyprmx/android/sdk/footer/a;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/e;Lcom/hyprmx/android/sdk/footer/e;ZI)V
    .registers 13

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_e

    move-object v2, v1

    goto :goto_f

    :cond_e
    move-object v2, p2

    :goto_f
    and-int/lit8 p1, p7, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_16

    const/4 v3, 0x0

    goto :goto_17

    :cond_16
    move v3, p3

    :goto_17
    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_1d

    move-object v4, v1

    goto :goto_1e

    :cond_1d
    move-object v4, p4

    :goto_1e
    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move-object v1, p5

    :goto_24
    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_2a

    const/4 p7, 0x0

    goto :goto_2b

    :cond_2a
    move p7, p6

    :goto_2b
    move-object p1, p0

    move-object p2, v0

    move-object p3, v2

    move p4, v3

    move-object p5, v4

    move-object p6, v1

    invoke-direct/range {p1 .. p7}, Lcom/hyprmx/android/sdk/footer/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/e;Lcom/hyprmx/android/sdk/footer/e;Z)V

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/hyprmx/android/sdk/footer/e;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/a;->d:Lcom/hyprmx/android/sdk/footer/e;

    return-object v0
.end method

.method public final e()Lcom/hyprmx/android/sdk/footer/e;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/a;->e:Lcom/hyprmx/android/sdk/footer/e;

    return-object v0
.end method

.method public final f()I
    .registers 2

    iget v0, p0, Lcom/hyprmx/android/sdk/footer/a;->c:I

    return v0
.end method

.method public final g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/hyprmx/android/sdk/footer/a;->f:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hyprmx/android/sdk/footer/a;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.hyprmx.android.sdk.footer.a.C0285a (com.hyprmx.android.sdk.footer.a$a)
.class public final Lcom/hyprmx/android/sdk/footer/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hyprmx/android/sdk/footer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/hyprmx/android/sdk/footer/a;
    .registers 16

    if-eqz p0, :cond_a0

    const-string v0, "images"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_80

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const-string v3, "link"

    const-string v4, "width"

    const-string v5, "height"

    const-string v6, "imageJSON.getString(FIELD_PORTRAITURL)"

    const-string v7, "portrait_url"

    const-string v8, "image"

    const-string v9, "null cannot be cast to non-null type org.json.JSONObject"

    const/16 v10, 0xf

    if-lez v1, :cond_4e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4e

    new-instance v11, Lcom/hyprmx/android/sdk/footer/e;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual {v1, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    invoke-static {v3, v1}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v11, v12, v13, v14, v1}, Lcom/hyprmx/android/sdk/footer/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_4f

    :cond_4e
    move-object v11, v2

    :goto_4f
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    const/4 v12, 0x1

    if-le v1, v12, :cond_7d

    invoke-virtual {v0, v12}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_7d

    new-instance v2, Lcom/hyprmx/android/sdk/footer/e;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v0, v4, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v0}, Lcom/hyprmx/android/sdk/utility/i0;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v5, v4, v0}, Lcom/hyprmx/android/sdk/footer/e;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    :cond_7d
    move-object v8, v2

    move-object v7, v11

    goto :goto_82

    :cond_80
    move-object v7, v2

    move-object v8, v7

    :goto_82
    new-instance v0, Lcom/hyprmx/android/sdk/footer/a;

    const-string v1, "text"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "background_color"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0x33

    const-string v2, "min_height"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v9, 0x0

    const/16 v10, 0x20

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/hyprmx/android/sdk/footer/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/hyprmx/android/sdk/footer/e;Lcom/hyprmx/android/sdk/footer/e;ZI)V

    goto :goto_a2

    :cond_a0
    sget-object v0, Lcom/hyprmx/android/sdk/footer/a;->g:Lcom/hyprmx/android/sdk/footer/a;

    :goto_a2
    return-object v0
.end method
