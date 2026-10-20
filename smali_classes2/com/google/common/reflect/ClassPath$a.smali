###### Class com.google.common.reflect.ClassPath.a (com.google.common.reflect.ClassPath$a)
.class public final Lcom/google/common/reflect/ClassPath$a;
.super Lcom/google/common/reflect/ClassPath$c;
.source "ClassPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/reflect/ClassPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/reflect/ClassPath$c;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {p2}, Lcom/google/common/reflect/ClassPath;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/reflect/ClassPath$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/reflect/ClassPath$a;->d:Ljava/lang/String;

    return-object v0
.end method
