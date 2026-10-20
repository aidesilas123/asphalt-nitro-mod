###### Class com.ironsource.adqualitysdk.sdk.i.kb.a (com.ironsource.adqualitysdk.sdk.i.kb$a)
.class final Lcom/ironsource/adqualitysdk/sdk/i/kb$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/ironsource/adqualitysdk/sdk/i/hr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adqualitysdk/sdk/i/kb;->h()Lcom/ironsource/adqualitysdk/sdk/i/hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ﻛ(Lcom/ironsource/adqualitysdk/sdk/i/hp;)Z
    .registers 3

    const-class v0, Landroid/webkit/WebViewClient;

    invoke-interface {p1}, Lcom/ironsource/adqualitysdk/sdk/i/hp;->ﻐ()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
