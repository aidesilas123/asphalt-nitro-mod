###### Class com.tapjoy.internal.z4 (com.tapjoy.internal.z4)
.class public final Lcom/tapjoy/internal/z4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/tapjoy/o;


# direct methods
.method public constructor <init>(Lcom/tapjoy/o;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iput-object p2, p0, Lcom/tapjoy/internal/z4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p3, :cond_a

    iget-object p3, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object p3, p3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {p3, p2}, Lcom/tapjoy/w;->C(Ljava/lang/String;)V

    goto :goto_18

    :cond_a
    iget-object v0, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object v0, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {v0, p2}, Lcom/tapjoy/w;->r(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object p2, p2, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {p2, p3}, Lcom/tapjoy/w;->v(Ljava/lang/String;)V

    :goto_18
    iget-object p2, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object p2, p2, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lcom/tapjoy/w;->u(Z)V

    iget-object p2, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object p2, p2, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    iget-object p3, p0, Lcom/tapjoy/internal/z4;->a:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/tapjoy/w;->s(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJMemoryDataStorage;->getInstance()Lcom/tapjoy/TJMemoryDataStorage;

    move-result-object p2

    iget-object p3, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object p3, p3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {p3}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object v0, v0, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {p2, p3, v0}, Lcom/tapjoy/TJMemoryDataStorage;->b(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object p3, p3, Lcom/tapjoy/o;->b:Landroid/content/Context;

    const-class v0, Lcom/tapjoy/TJAdUnitActivity;

    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p3, p0, Lcom/tapjoy/internal/z4;->b:Lcom/tapjoy/o;

    iget-object p3, p3, Lcom/tapjoy/o;->d:Lcom/tapjoy/w;

    invoke-virtual {p3}, Lcom/tapjoy/w;->i()Ljava/lang/String;

    move-result-object p3

    const-string v0, "placement_name"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p3, 0x10000000

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
