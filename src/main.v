module main

import webgpu

//#include "webgpu.h"

fn main() {
	{
		a := webgpu.WGPUTextureViewDescriptor
		a.mipLevelCount = 4294967295
		a.arrayLayerCount = 4294967295
		// a
	}
	/*{
		//a := WGPUTextureDataLayout{}
		//x := a.bytesPerRow(4294967295)
		//y := a.rowsPerImage(4294967295)
		// a
		// x
		y
	}
	{
		a := WGPUBindGroupEntry{}
		x := a.size(18446744073709551615)
		a
		x
	}
	{
		x := (18446744073709551615)
	  x
	}
	{
		a := WGPULimits{}
		x := a.maxTextureDimension2D(4294967295)
		y := a.maxBufferSize 18446744073709551615
		a
	  x
	  y
	}
	{
		//mut a := WGPUComputePassTimestampWrites{}
		//a.beginningOfPassWriteIndex = 4294967295
	//	a.endOfPassWriteIndex = 4294967295
		// a
	}*/
}
