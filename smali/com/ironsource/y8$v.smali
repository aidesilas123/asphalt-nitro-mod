###### Class com.ironsource.y8.v (com.ironsource.y8$v)
.class Lcom/ironsource/y8$v;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/y8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "v"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field final synthetic b:Lcom/ironsource/y8;


# direct methods
.method private constructor <init>(Lcom/ironsource/y8;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/y8$v;->b:Lcom/ironsource/y8;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/y8;Lcom/ironsource/y8$k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ironsource/y8$v;-><init>(Lcom/ironsource/y8;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/y8$v;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ironsource/y8$v;->a:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
