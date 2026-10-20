###### Class com.squareup.imagelib.Picasso.c.a (com.squareup.imagelib.Picasso$c$a)
.class Lcom/squareup/imagelib/Picasso$c$a;
.super Ljava/lang/Object;
.source "Picasso.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/squareup/imagelib/Picasso$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Exception;

.field final synthetic b:Lcom/squareup/imagelib/Picasso$c;


# direct methods
.method constructor <init>(Lcom/squareup/imagelib/Picasso$c;Ljava/lang/Exception;)V
    .registers 3

    iput-object p1, p0, Lcom/squareup/imagelib/Picasso$c$a;->b:Lcom/squareup/imagelib/Picasso$c;

    iput-object p2, p0, Lcom/squareup/imagelib/Picasso$c$a;->a:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/squareup/imagelib/Picasso$c$a;->a:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
