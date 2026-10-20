###### Class com.ironsource.m6.b (com.ironsource.m6$b)
.class public Lcom/ironsource/m6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/m6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Landroid/content/Context;

.field d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Lcom/ironsource/m6$b;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/m6$b;->c:Landroid/content/Context;

    return-object p0
.end method

.method public a()Lcom/ironsource/m6;
    .registers 3

    new-instance v0, Lcom/ironsource/m6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ironsource/m6;-><init>(Lcom/ironsource/m6$b;Lcom/ironsource/m6$a;)V

    return-object v0
.end method

.method b(Ljava/lang/String;)Lcom/ironsource/m6$b;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/m6$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method c(Ljava/lang/String;)Lcom/ironsource/m6$b;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/m6$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method d(Ljava/lang/String;)Lcom/ironsource/m6$b;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/m6$b;->d:Ljava/lang/String;

    return-object p0
.end method
