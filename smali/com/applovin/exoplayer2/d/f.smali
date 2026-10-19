###### Class com.applovin.exoplayer2.d.f (com.applovin.exoplayer2.d.f)
.class public interface abstract Lcom/applovin/exoplayer2/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/exoplayer2/d/f$a;
    }
.end annotation


# virtual methods
.method public abstract A(Ljava/lang/String;)Z
.end method

.method public abstract P()I
.end method

.method public abstract a(Lcom/applovin/exoplayer2/d/g$a;)V
    .param p1    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract b(Lcom/applovin/exoplayer2/d/g$a;)V
    .param p1    # Lcom/applovin/exoplayer2/d/g$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract hs()Z
.end method

.method public abstract ht()Lcom/applovin/exoplayer2/d/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract hu()Ljava/util/UUID;
.end method

.method public abstract hv()Lcom/applovin/exoplayer2/c/b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract hw()Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

###### Class com.applovin.exoplayer2.d.f.a (com.applovin.exoplayer2.d.f$a)
.class public Lcom/applovin/exoplayer2/d/f$a;
.super Ljava/io/IOException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/exoplayer2/d/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    iput p2, p0, Lcom/applovin/exoplayer2/d/f$a;->errorCode:I

    return-void
.end method
