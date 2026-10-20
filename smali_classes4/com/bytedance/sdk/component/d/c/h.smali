###### Class com.bytedance.sdk.component.d.c.h (com.bytedance.sdk.component.d.c.h)
.class public final Lcom/bytedance/sdk/component/d/c/h;
.super Ljava/lang/Object;
.source "Precondition.java"


# direct methods
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method
