###### Class com.ironsource.o1.a (com.ironsource.o1$a)
.class Lcom/ironsource/o1$a;
.super Lcom/ironsource/jb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o1;->a(Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ironsource/mediationsdk/model/Placement;

.field final synthetic c:Lcom/ironsource/o1;


# direct methods
.method constructor <init>(Lcom/ironsource/o1;Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 4

    iput-object p1, p0, Lcom/ironsource/o1$a;->c:Lcom/ironsource/o1;

    iput-object p2, p0, Lcom/ironsource/o1$a;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/o1$a;->b:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-direct {p0}, Lcom/ironsource/jb;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/o1$a;->c:Lcom/ironsource/o1;

    iget-object v1, p0, Lcom/ironsource/o1$a;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/o1$a;->b:Lcom/ironsource/mediationsdk/model/Placement;

    invoke-static {v0, v1, v2}, Lcom/ironsource/o1;->x0(Lcom/ironsource/o1;Landroid/app/Activity;Lcom/ironsource/mediationsdk/model/Placement;)V

    return-void
.end method
