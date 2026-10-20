###### Class com.bytedance.sdk.component.a.h (com.bytedance.sdk.component.a.h)
.class Lcom/bytedance/sdk/component/a/h;
.super Ljava/lang/Object;
.source "DataConverterActual.java"


# instance fields
.field private a:Lcom/bytedance/sdk/component/a/l;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/a/l;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/a/h;->a:Lcom/bytedance/sdk/component/a/l;

    return-void
.end method

.method static a(Lcom/bytedance/sdk/component/a/l;)Lcom/bytedance/sdk/component/a/h;
    .registers 2

    new-instance v0, Lcom/bytedance/sdk/component/a/h;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/a/h;-><init>(Lcom/bytedance/sdk/component/a/l;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)V
    .registers 4

    const-string/jumbo v0, "{"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Param is not allowed to be List or JSONArray, rawString:\n "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/a/i;->a(Ljava/lang/RuntimeException;)V

    :cond_2b
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/sdk/component/a/h;->a(Ljava/lang/String;)V

    const-class v0, Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    instance-of v0, p2, Ljava/lang/Class;

    if-eqz v0, :cond_1b

    const-class v0, Lorg/json/JSONObject;

    move-object v1, p2

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_22

    :cond_1b
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/h;->a:Lcom/bytedance/sdk/component/a/l;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/a/l;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_22
    :goto_22
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_6

    const-string/jumbo p1, "{}"

    return-object p1

    :cond_6
    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_16

    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_f

    goto :goto_16

    :cond_f
    iget-object v0, p0, Lcom/bytedance/sdk/component/a/h;->a:Lcom/bytedance/sdk/component/a/l;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/a/l;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_16
    :goto_16
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1a
    invoke-static {p1}, Lcom/bytedance/sdk/component/a/h;->a(Ljava/lang/String;)V

    return-object p1
.end method
