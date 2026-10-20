###### Class com.ironsource.o3.a (com.ironsource.o3$a)
.class Lcom/ironsource/o3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/o3;->M(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ironsource/o3;


# direct methods
.method constructor <init>(Lcom/ironsource/o3;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/o3$a;->a:Lcom/ironsource/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    if-eqz p3, :cond_2d

    :try_start_2
    array-length p1, p3

    if-lez p1, :cond_2d

    const/4 p1, 0x0

    aget-object p2, p3, p1

    if-eqz p2, :cond_2d

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getId"

    new-array v1, p1, [Ljava/lang/Class;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    aget-object p3, p3, p1

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2d

    iget-object p2, p0, Lcom/ironsource/o3$a;->a:Lcom/ironsource/o3;

    invoke-static {p2, p1}, Lcom/ironsource/o3;->T(Lcom/ironsource/o3;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_2d

    :catch_2d
    :cond_2d
    const/4 p1, 0x0

    return-object p1
.end method
