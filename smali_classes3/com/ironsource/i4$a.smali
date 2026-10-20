###### Class com.ironsource.i4.a (com.ironsource.i4$a)
.class Lcom/ironsource/i4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/i4;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ironsource/i4;


# direct methods
.method constructor <init>(Lcom/ironsource/i4;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    iput-object p2, p0, Lcom/ironsource/i4$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/ironsource/wa;

    invoke-direct {v0}, Lcom/ironsource/wa;-><init>()V

    iget-object v1, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v1}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/d4;->d()Ljava/util/ArrayList;

    move-result-object v1

    const-string v2, "POST"

    iget-object v3, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v3}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/d4;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v0, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v0}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/d4;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/i4$a;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ironsource/w5;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/wa;

    move-result-object v0

    goto :goto_54

    :cond_32
    const-string v2, "GET"

    iget-object v3, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v3}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/d4;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_54

    iget-object v0, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    invoke-static {v0}, Lcom/ironsource/i4;->a(Lcom/ironsource/i4;)Lcom/ironsource/d4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/d4;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ironsource/i4$a;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/ironsource/w5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/ironsource/wa;

    move-result-object v0

    :cond_54
    :goto_54
    iget-object v1, p0, Lcom/ironsource/i4$a;->b:Lcom/ironsource/i4;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response status code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/ironsource/wa;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/i4;->b(Lcom/ironsource/i4;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_71
    return-void
.end method
