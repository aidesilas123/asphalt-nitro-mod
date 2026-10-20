###### Class com.squareup.imagelib.d (com.squareup.imagelib.d)
.class public interface abstract Lcom/squareup/imagelib/d;
.super Ljava/lang/Object;
.source "Cache.java"


# static fields
.field public static final a:Lcom/squareup/imagelib/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/squareup/imagelib/d$a;

    invoke-direct {v0}, Lcom/squareup/imagelib/d$a;-><init>()V

    sput-object v0, Lcom/squareup/imagelib/d;->a:Lcom/squareup/imagelib/d;

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end method

.method public abstract get(Ljava/lang/String;)Landroid/graphics/Bitmap;
.end method

.method public abstract size()I
.end method
