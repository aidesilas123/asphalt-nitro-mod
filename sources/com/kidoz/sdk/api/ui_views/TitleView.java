package com.kidoz.sdk.api.ui_views;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.json.mediationsdk.utils.IronSourceConstants;
import com.kidoz.sdk.api.general.utils.ScreenUtils;
import com.kidoz.sdk.api.picasso_related.PicassoOk;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class TitleView extends RelativeLayout {
    private int mHeight;
    private File mImageFile;
    private ImageView mImageView;
    private TextView mTitle;
    private Paint mWhitePaint;
    private int mWidth;

    public TitleView(Context context, File file) {
        super(context);
        this.mImageFile = file;
        initView();
    }

    private void initImageParameters() {
        float scaleFactor = ScreenUtils.getScaleFactor(getContext());
        this.mWidth = 710;
        this.mHeight = IronSourceConstants.USING_CACHE_FOR_INIT_EVENT;
        File file = this.mImageFile;
        if (file != null && file.exists()) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(this.mImageFile.getAbsolutePath(), options);
            this.mWidth = options.outWidth;
            this.mHeight = options.outHeight;
        }
        this.mWidth = (int) (this.mWidth * scaleFactor);
        this.mHeight = (int) (this.mHeight * scaleFactor);
    }

    private void initImageView() {
        ImageView imageView = new ImageView(getContext());
        this.mImageView = imageView;
        imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        addView(this.mImageView, new RelativeLayout.LayoutParams(this.mWidth, this.mHeight));
    }

    private void initPaints() {
        Paint paint = new Paint(1);
        this.mWhitePaint = paint;
        paint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.mWhitePaint.setColor(Color.parseColor("#ffffff"));
        setLayerType(1, this.mWhitePaint);
    }

    private void initTitle() {
        TextView textView = new TextView(getContext());
        this.mTitle = textView;
        textView.setSingleLine(true);
        this.mTitle.setTextColor(Color.parseColor("#04a0e1"));
        this.mTitle.setTextSize(0, (int) (this.mHeight * 0.35714287f));
        this.mTitle.setGravity(19);
        this.mTitle.setEllipsize(TextUtils.TruncateAt.END);
        this.mTitle.setShadowLayer(2.0f, 1.0f, 1.0f, Color.parseColor("#666666"));
        this.mTitle.setTypeface(null, 1);
        addView(this.mTitle, new RelativeLayout.LayoutParams(-2, -2));
    }

    private void initView() {
        setWillNotDraw(false);
        initImageParameters();
        initPaints();
        initImageView();
        initTitle();
    }

    private void loadImage() {
        File file = this.mImageFile;
        if (file != null && file.exists() && this.mImageView.getDrawable() == null) {
            PicassoOk.getPicasso(getContext()).j(this.mImageFile).g(this.mImageView);
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        File file = this.mImageFile;
        if (file != null && file.exists()) {
            loadImage();
            return;
        }
        int i = this.mWidth;
        canvas.drawCircle(i * 0.11971831f, this.mHeight * 0.10714286f, i * 0.15492958f, this.mWhitePaint);
        int i2 = this.mWidth;
        canvas.drawCircle(i2 * 0.34029576f, this.mHeight * (-0.19571428f), i2 * 0.2352676f, this.mWhitePaint);
        int i3 = this.mWidth;
        canvas.drawCircle(i3 * 0.5924084f, this.mHeight * (-0.19321428f), i3 * 0.23528169f, this.mWhitePaint);
        int i4 = this.mWidth;
        canvas.drawCircle(i4 * 0.8690141f, this.mHeight * (-0.16428572f), i4 * 0.13098592f, this.mWhitePaint);
    }

    @Override // android.widget.RelativeLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        getChildAt(0).layout(0, 0, getMeasuredWidth(), getMeasuredHeight());
        View childAt = getChildAt(1);
        int i5 = this.mWidth;
        childAt.layout((int) (i5 * 0.03943662f), (int) (this.mHeight * 0.14285715f), (int) (i5 * 0.73802817f), getMeasuredHeight());
    }

    @Override // android.widget.RelativeLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        setMeasuredDimension(this.mWidth, this.mHeight);
    }

    public void setTitle(String str) {
        this.mTitle.setText(str);
    }

    public void setTitleColor(int i) {
        this.mTitle.setTextColor(i);
    }
}
