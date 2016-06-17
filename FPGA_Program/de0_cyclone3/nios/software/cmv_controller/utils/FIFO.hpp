#ifndef FIFO_HPP_
#define FIFO_HPP_

template<class T>
class FIFO {

	public:

		FIFO<T>(unsigned depth = 1024) :
				_m(depth - 1) {
			if ((depth < 2) || (depth & _m))
				throw("depth must be a power of 2"); /* XXX InvalidFIFODepthException */

			_x = new T[depth];
			_r = 0;
			_w = 0;
		}

		virtual ~FIFO<T>() {
			delete[] _x;
		}

		bool isEmpty(void) {
			return (_r == _w);
		}

		bool isFull(void) {
			return (((_r & _m) == (_w & _m)) && (_r != _w));
		}

		FIFO<T>& push(T val) {
			if (isFull())
				_triggerFullCondition();

			_x[_w & _m] = val;
			_w++;

			return *this;
		}

		T pull(void) {
			if (isEmpty())
				_triggerEmptyCondition();

			T rv = _x[_r & _m];
			_r++;

			return rv;
		}

		FIFO<T>& flush(void) {
			_r = _w = 0;
			return *this;
		}

		virtual void lock(void) {
			;
		}

		virtual void unlock(void) {
			;
		}

	protected:

		unsigned _m; /* counter mask (= depth - 1) */
		unsigned _r; /* read offset in units of T  */
		unsigned _w; /* write offset in units of T */
		T* _x;

		void _triggerFullCondition(void) {
			throw "FIFO is full"; /* XXX FullFIFOException */
		}

		void _triggerEmptyCondition(void) {
			throw "FIFO is empty"; /*XXX EmptyFIFOException */
		}

};

#endif /*FIFO_HPP_ */
