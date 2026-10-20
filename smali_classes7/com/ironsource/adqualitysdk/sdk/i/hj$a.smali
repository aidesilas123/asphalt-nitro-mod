###### Class com.ironsource.adqualitysdk.sdk.i.hj.a (com.ironsource.adqualitysdk.sdk.i.hj$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/hj$a;
.super Lcom/ironsource/adqualitysdk/sdk/i/hj$b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/hj;->ﾇ(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adqualitysdk/sdk/i/hj;Ljava/lang/String;)V
    .registers 3

    iput-object p2, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$a;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/adqualitysdk/sdk/i/hj$b;-><init>(Lcom/ironsource/adqualitysdk/sdk/i/hj;)V

    return-void
.end method


# virtual methods
.method public final ﾒ(Ljava/lang/reflect/Field;)Z
    .registers 3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ironsource/adqualitysdk/sdk/i/hj$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
