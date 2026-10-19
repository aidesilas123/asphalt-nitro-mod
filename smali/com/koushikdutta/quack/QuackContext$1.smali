###### Class com.koushikdutta.quack.QuackContext.AnonymousClass1 (com.koushikdutta.quack.QuackContext$1)
.class Lcom/koushikdutta/quack/QuackContext$1;
.super Lcom/koushikdutta/quack/JavaMethodObject;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/quack/QuackContext;->coerceJavaToJavaScript(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/quack/QuackContext;

.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/quack/QuackContext;Lcom/koushikdutta/quack/QuackContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 6

    iput-object p1, p0, Lcom/koushikdutta/quack/QuackContext$1;->this$0:Lcom/koushikdutta/quack/QuackContext;

    iput-object p5, p0, Lcom/koushikdutta/quack/QuackContext$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0, p2, p3, p4}, Lcom/koushikdutta/quack/JavaMethodObject;-><init>(Lcom/koushikdutta/quack/QuackContext;Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public varargs callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/koushikdutta/quack/JavaMethodObject;->callMethod(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMethods(Ljava/lang/Object;)[Ljava/lang/reflect/Method;
    .registers 2

    iget-object p1, p0, Lcom/koushikdutta/quack/QuackContext$1;->val$clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method
