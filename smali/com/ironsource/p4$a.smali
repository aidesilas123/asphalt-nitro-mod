###### Class com.ironsource.p4.a (com.ironsource.p4$a)
.class Lcom/ironsource/p4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/fa;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/p4;->a(Lcom/ironsource/q6;Ljava/lang/String;IILcom/ironsource/fa;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/fa;

.field final synthetic b:Lcom/ironsource/p4;


# direct methods
.method constructor <init>(Lcom/ironsource/p4;Lcom/ironsource/fa;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/p4$a;->b:Lcom/ironsource/p4;

    iput-object p2, p0, Lcom/ironsource/p4$a;->a:Lcom/ironsource/fa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ironsource/q6;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/p4$a;->a:Lcom/ironsource/fa;

    invoke-interface {v0, p1}, Lcom/ironsource/fa;->a(Lcom/ironsource/q6;)V

    :try_start_5
    new-instance v0, Lcom/ironsource/p4$a$a;

    invoke-direct {v0, p0}, Lcom/ironsource/p4$a$a;-><init>(Lcom/ironsource/p4$a;)V

    iget-object v1, p0, Lcom/ironsource/p4$a;->b:Lcom/ironsource/p4;

    invoke-static {v1}, Lcom/ironsource/p4;->a(Lcom/ironsource/p4;)Lcom/ironsource/g9;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/ironsource/g9;->d(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1c
    return-void
.end method

.method public a(Lcom/ironsource/q6;Lcom/ironsource/i6;)V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/p4$a;->a:Lcom/ironsource/fa;

    invoke-interface {v0, p1, p2}, Lcom/ironsource/fa;->a(Lcom/ironsource/q6;Lcom/ironsource/i6;)V

    return-void
.end method
